import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../../../core/utils/styles.dart';
import '../../../provider/auth_provider.dart';

class PersonalInformation extends StatelessWidget {
  const PersonalInformation({super.key});
  static const String routename = 'Personal';
  @override
  Widget build(BuildContext context) {
    var authProvider = Provider.of<AuthProvidersr>(context);

    return SafeArea(
      child: Scaffold(
          backgroundColor: Theme.of(context).colorScheme.surface,
          body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Text(
                    AppLocalizations.of(context)!.personal_information,
                    style: Styles.textStyle30.copyWith(
                        color: Theme.of(context).colorScheme.primary,
                        fontSize: 36),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Name : ',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '${authProvider.currentUser!.firstName} ${authProvider.currentUser!.lastName} ',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: Icon(Icons.edit,
                            color: Theme.of(context).colorScheme.surface),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  width: MediaQuery.of(context).size.width * 0.92,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Email : ',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Text(
                        '${authProvider.currentUser!.email}',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.surface,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        icon: Icon(Icons.edit,
                            color: Theme.of(context).colorScheme.surface),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          )),
    );
  }
}
