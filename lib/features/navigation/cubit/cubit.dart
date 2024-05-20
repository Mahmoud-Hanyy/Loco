import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loco/features/navigation/cubit/states.dart';

import '../../categories/widgets/categories.dart';
import '../../favorites/favorites.dart';
import '../../home/home.dart';
import '../../profile/profile.dart';

class NavigationCubit extends Cubit<NavigationState>{
  NavigationCubit() : super(InitialState());

  static NavigationCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> pages = [
    HomePage(),
    Categories(),
    const Favorites(),
    const Profile(),
  ];

  void changeIndex(int index){
    currentIndex = index;
    emit(ChangeIndexState());
  }



}