import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../constants/theme.dart' as Colors;
import 'cubit/cubit.dart';
import 'cubit/states.dart';

//ignore: must_be_immutable
class NavigationPage extends StatelessWidget {
   const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => NavigationCubit(),
      child: BlocConsumer<NavigationCubit,NavigationState>(
        listener: (context, state) {},
        builder: (context,state){
          NavigationCubit cubit = NavigationCubit.get(context);
          return Scaffold(
            body: cubit.pages[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Colors.AppTheme.white,
              backgroundColor: Colors.AppTheme.loco,
              unselectedItemColor: Colors.AppTheme.light,
              currentIndex: cubit.currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                cubit.changeIndex(index);
              },
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.category),
                  label: 'Categories',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.favorite),
                  label: 'Favorite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  label: 'Profile',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
