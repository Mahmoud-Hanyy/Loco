import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

//ignore: must_be_immutable
class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});
  static const String routeName = 'nav';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NavigationCubit(),
      child: BlocConsumer<NavigationCubit, NavigationState>(
        listener: (context, state) {},
        builder: (context, state) {
          NavigationCubit cubit = NavigationCubit.get(context);
          return Scaffold(
            body: cubit.pages[cubit.currentIndex],
            bottomNavigationBar: BottomNavigationBar(
              selectedItemColor: Theme.of(context).colorScheme.background,
              backgroundColor: Theme.of(context).colorScheme.primary,
              unselectedItemColor: Theme.of(context).colorScheme.secondary,
              currentIndex: cubit.currentIndex,
              type: BottomNavigationBarType.fixed,
              onTap: (index) {
                cubit.changeIndex(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: const Icon(Icons.home),
                  label: AppLocalizations.of(context)!.home,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.category),
                  label: AppLocalizations.of(context)!.category,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.favorite),
                  label: AppLocalizations.of(context)!.favorites,
                ),
                BottomNavigationBarItem(
                  icon: const Icon(Icons.person),
                  label: AppLocalizations.of(context)!.profile,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
