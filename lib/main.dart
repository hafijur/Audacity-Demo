import 'package:audacity_demo/bloc/home_bloc.dart';
import 'package:audacity_demo/state/home_state.dart';
import 'package:audacity_demo/widgets/product_card_lg_list.dart';
import 'package:audacity_demo/widgets/product_card_md_list.dart';
import 'package:audacity_demo/widgets/product_card_sm_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final homeBloc = new HomeBloc();

  @override
  void initState() {
    homeBloc.add(HomeEvent.Initial);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: _onRefresh,
      child: BlocBuilder<HomeBloc, HomeState>(
        cubit: homeBloc,
        builder: (BuildContext ctx, HomeState state) => Container(
          color: Colors.white,
          child: ListView(
            children: <Widget>[
              ProductCardMdList("Trending Sellers", state.trendingSellers),
              ProductCardSmList("Trending Products", state.trendingProducts),
              if (state.productStories.isNotEmpty) ...[
                ProductCardLgList(state.productStories.getRange(0, 3).toList())
              ],
              ProductCardSmList("New Arrivals", state.newArrivalProducts),
              if (state.productStories.isNotEmpty) ...[
                ProductCardLgList(state.productStories.getRange(3, 6).toList())
              ],
              ProductCardMdList("New Shops", state.newShops),
              SizedBox(height: 10),
              if (state.productStories.isNotEmpty)
                ProductCardLgList(state.productStories),
            ],
          ),
        ),
      ),
    );
  }

  Future<Null> _onRefresh() async {
    homeBloc.add(HomeEvent.UpdateCache);
    await Future.delayed(Duration(seconds: 3));
    return null;
  }
}
