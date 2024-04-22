import 'package:flutter/material.dart';
import 'package:loco/core/utils/styles.dart';
import '../../core/utils/colors.dart';

//ignore: must_be_immutable
class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);
  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  bool isTap = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back,color: loco,),
        title: const Text(
          'Favorites',
          style: Styles.textStyle30
        ),
        actions: const [
          Icon(Icons.search,size: 30,color: loco,),
          SizedBox(width: 10,),
          Icon(Icons.shopping_cart_outlined,size: 30,color:loco,),
        ],
        centerTitle: true,
        toolbarHeight: 70,
        backgroundColor: white,
        elevation: 0,
      ),
      body:Container(
        color: white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Card(
                          elevation: 6,
                          shadowColor: loco,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 1.5, color: loco),
                            ),
                            width: 200,
                            height: 130,
                            child: Row(
                              children: [
                                Container(
                                    clipBehavior: Clip.antiAlias,
                                    width:140,
                                    height: 145,
                                    decoration:BoxDecoration(
                                      borderRadius: BorderRadius.circular(9),
                                    ),
                                    child: Image.asset('lib/resources/images/hoodie.png',
                                      fit: BoxFit.cover,)),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(6.0),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.stretch,
                                      children: [
                                        const Text('Black Micheal Angelo Hoodie'),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text('EGP 430'),
                                            IconButton(onPressed: (){
                                              setState(() {
                                                isTap =! isTap;
                                              });
                                            }, icon:Icon(Icons.favorite,color: isTap?loco:white,)),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                    );

                  },),
              ),
            ],
          ),
        ),
      ),
    );
  }
}