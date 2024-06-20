import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:loco/features/home/widgets/services.dart';

import '../../../core/utils/styles.dart';
import '../../../core/widgets/product_item.dart';
import '../../../domain/di.dart';
import '../../../domain/entities/ProductResponseEntity.dart';
import '../../categories/cubit/product_list_view_model.dart';

//ignore:must_be_immutable
class MenProductsPage extends StatefulWidget {
  static const String routename = 'menProductPage';
  ProductListViewModel viewModel = ProductListViewModel(
      getAllProductsUseCase: injectGetAllProductsUseCase());

  MenProductsPage({super.key});

  @override
  State<MenProductsPage> createState() => _MenProductsPageState();
}

class _MenProductsPageState extends State<MenProductsPage> {
  filterProduct() {
    ApiServices().myFilterList().then((value) {
      myItems(value!.clothes!);
      setState(() {});
    });
  }

  //for filter items
  List<ProductEntity> filterLists = [];

  List<ProductEntity> myItems(List<ProductEntity> list) {
    for (var element in list) {
      if (element.category == 'Men') {
        filterLists.add(element);
      }
    }
    return filterLists;
  }

  @override
  void initState() {
    filterProduct();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.men,
            style: Styles.textOfLabel.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 70,
          backgroundColor: Theme.of(context).colorScheme.surface,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 25,
              childAspectRatio: 1 / 1.30),
          itemCount: filterLists.length,
          itemBuilder: (BuildContext context, int index) {
            return ProductItem(productEntity: filterLists[index]);
          },
        ));
  }
}
