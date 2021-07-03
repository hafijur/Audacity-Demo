import 'dart:async';

import 'package:audacity_demo/services/base_http.dart';
import 'package:audacity_demo/state/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

enum HomeEvent { Initial, UpdateCache }

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc()
      : super(
          HomeState(
            trendingSellers: [],
            newShops: [],
            trendingProducts: [],
            newArrivalProducts: [],
            productStories: [],
          ),
        );

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    if (event == HomeEvent.Initial) {
      state.trendingSellers = await BaseHttp.getTrendingSellers();
      yield state.copyWith();
      state.trendingProducts = await BaseHttp.getTrendingProducts();
      yield state.copyWith();
      state.productStories = await BaseHttp.getProductStories();
      yield state.copyWith();
      state.newArrivalProducts = await BaseHttp.getNewArrivalProducts();
      yield state.copyWith();
      state.newShops = await BaseHttp.getNewShops();
      yield state.copyWith();
    }
    if (event == HomeEvent.UpdateCache) {
      state.trendingSellers =
          await BaseHttp.getTrendingSellers(updateCache: true);
      state.trendingProducts =
          await BaseHttp.getTrendingProducts(updateCache: true);
      state.productStories =
          await BaseHttp.getProductStories(updateCache: true);
      state.newArrivalProducts =
          await BaseHttp.getNewArrivalProducts(updateCache: true);
      state.newShops = await BaseHttp.getNewShops(updateCache: true);
      yield state.copyWith();
    }
  }
}
