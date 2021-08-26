import 'package:drohealth/data/repositories/product_repository.dart';
import 'package:drohealth/logic/blocs/increment_packs_bloc/pack_bloc.dart';
import 'package:drohealth/logic/blocs/products_download_bloc/product_bloc.dart';
import 'package:drohealth/presentation/detail_screen_widgets/error_indicator.dart';
import 'package:drohealth/presentation/routers/app_router.dart';
import 'package:drohealth/presentation/store_screen_widgets/hot_actions.dart';
import 'package:drohealth/presentation/store_screen_widgets/loading_indicator.dart';
import 'package:drohealth/presentation/store_screen_widgets/products_view.dart';
import 'package:drohealth/presentation/store_screen_widgets/search_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StoreScreen extends StatelessWidget {
  final AppRouter _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      color: Colors.white,
      title: 'Store Screen',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Proxima',
      ),
      home: MultiBlocProvider(
        child: MyHomePage(),
        providers: [
          BlocProvider(
            create: (context) =>
                ProductBloc(repository: ProductRepositoryImpl()),
          ),
          BlocProvider(
            create: (context) => PackBloc(),
          ),
        ],
      ),
      onGenerateRoute: _appRouter.onGenerateRoute,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ProductBloc productBloc;

  @override
  void initState() {
    super.initState();
    productBloc = BlocProvider.of<ProductBloc>(context);
    productBloc.add(FetchProductEvent());
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.0,
        title: BlocBuilder<ProductBloc, ProductState>(
          // ignore: missing_return
          builder: (context, state) {
            // ignore: missing_return
            if (state is ProductInitialState) {
              return CupertinoActivityIndicator(
                animating: true,
                radius: 10,
              );
            } else if (state is ProductLoadingState) {
              return CupertinoActivityIndicator(
                animating: true,
                radius: 10,
              );
            } else if (state is ProductLoadedState) {
              return Text(
                state.product.length.toString() + " Item(s)",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else if (state is ProductErrorState) {
              return CupertinoActivityIndicator(
                animating: true,
                radius: 10,
              );
            }
          },
        ),
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            HotActions(),
            SearchBar(context),
            BlocBuilder<ProductBloc, ProductState>(
              // ignore: missing_return
              builder: (context, state) {
                if (state is ProductInitialState) {
                  return LoadingIndicator(context);
                } else if (state is ProductLoadingState) {
                  return LoadingIndicator(context);
                } else if (state is ProductLoadedState) {
                  return ProductsView(context, state.product);
                } else if (state is ProductErrorState) {
                  return ErrorIndicator(context, state.message);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
