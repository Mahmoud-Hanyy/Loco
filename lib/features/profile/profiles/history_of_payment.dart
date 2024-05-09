import 'package:flutter/material.dart';
import '../../../core/utils/assets.dart';
import '../../../core/utils/styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HistoryOfPayment extends StatelessWidget {
  const HistoryOfPayment({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.background,
        body: Column(
          children: [
            Text(
              AppLocalizations.of(context)!.history_of_payment,
              style: Styles.textStyle30.copyWith(
                  color: Theme.of(context).colorScheme.primary, fontSize: 37),
            ),
            const SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                        elevation: 6,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.3,
                          height: MediaQuery.of(context).size.height * 0.17,
                          child: Row(
                            children: [
                              Container(
                                  clipBehavior: Clip.antiAlias,
                                  width: 140,
                                  height: 145,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(9),
                                  ),
                                  child: Image.asset(
                                    Assets.hoodie1,
                                    fit: BoxFit.cover,
                                  )),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Text(
                                        'Black Micheal Angelo Hoodie',
                                        style: Styles.textStyle20.copyWith(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .primary,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Order is delivered',
                                            style: Styles.textStyle16.copyWith(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Icon(
                                            Icons.check_circle,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
