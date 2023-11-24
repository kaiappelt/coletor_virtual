import 'package:awesome_onboarding_screen/core/constants/assets_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/default_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/style_constants.dart';
import 'package:awesome_onboarding_screen/core/shared/components/collect_list_widget.dart';
import 'package:awesome_onboarding_screen/pages/home/controller.dart';
import 'package:awesome_onboarding_screen/pages/server-software-info/view.dart';
import 'package:awesome_onboarding_screen/pages/settings/view.dart';
import 'package:awesome_onboarding_screen/pages/update-layout-collect/view.dart';
import 'package:awesome_onboarding_screen/pages/virtual-collector-info/view.dart';
import 'package:flutter/cupertino.dart';
import 'package:speed_dial_fab/speed_dial_fab.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../core/constants/colors_constants.dart';
import '../../core/constants/default_text_constants.dart';
import '../../data/data.dart';
import '../../services/global.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../select-layout/view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      id: "home",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Center(
              child: Container(
                child: SizedBox(
                  child: Image.asset(
                    assetsVirtual,
                    height: 30,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          // floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
          floatingActionButton: SpeedDialFabWidget(
            secondaryIconsList: [
              Icons.barcode_reader,
              Icons.barcode_reader,
            ],
            primaryIconCollapse: Icons.close,
            primaryIconExpand: Icons.add,
            secondaryIconsText: [
              "Coleta RFID",
              "Coleta Normal",
            ],
            secondaryIconsOnPress: [
              () => {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const SelectLayoutPage(),
                      ),
                    )
                  },
              () => {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const SelectLayoutPage(),
                      ),
                    )
                  },
            ],
            secondaryBackgroundColor: defOrange,
            secondaryForegroundColor: Color.fromARGB(255, 239, 240, 248),
            primaryBackgroundColor: defOrange,
            primaryForegroundColor: Color.fromARGB(255, 239, 240, 248),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          drawer: Drawer(
            width: MediaQuery.of(context).size.width / 1.5,
            child: ListView(
              padding: EdgeInsets.zero,
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 190,
                  child: DrawerHeader(
                    decoration: BoxDecoration(color: defOrange),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(defPadding),
                            child: SizedBox(
                              height: 50,
                              child: Image.asset(
                                assetsServerLogo,
                                height: 30,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: defMargin,
                        ),
                        const Align(
                          alignment: Alignment.center,
                          child: Text(
                            'Teste@gmail.com',
                            style: defTextMediumWhite,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: defGreyLigthOpacity,
                    child: Icon(
                      Icons.fit_screen,
                      color: defThemeIconColor(),
                    ),
                  ),
                  title: Text(
                    DefText.editarLayoutColeta,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const UpdateLayoutCollectPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: defGreyLigthOpacity,
                    child: Icon(
                      Icons.ios_share,
                      color: defThemeIconColor(),
                    ),
                  ),
                  title: Text(
                    DefText.exportarColeta,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: defGreyLigthOpacity,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: defGreyLigthOpacity,
                    child: Icon(
                      Icons.settings_outlined,
                      color: defThemeIconColor(),
                    ),
                  ),
                  title: Text(
                    DefText.configuracaoLeitor,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const SettingsPage(),
                      ),
                    );
                  },
                ),
                // Obx(
                //   () => SwitchListTile(
                //     secondary: CircleAvatar(
                //       backgroundColor: defGreyLigthOpacity,
                //       child: Icon(
                //         TernavIcons.lightOutline.home_2,
                //         color: defGraffiti,
                //       ),
                //     ),
                //     title: Text('tema'.tr),
                //     subtitle: Text('sub_tema'.tr),
                //     value: controller.darkTheme,
                //     onChanged: (value) {
                //       controller.changeTheme();
                //     },
                //   ),
                // ),
                // ListTile(
                //   leading: CircleAvatar(
                //     backgroundColor: defGreyLigthOpacity,
                //     child: Icon(
                //       TernavIcons.lightOutline.home_2,
                //       color: defGraffiti,
                //     ),
                //   ),
                //   title: Text(
                //     'Tema',
                //     style: Theme.of(context).textTheme.titleSmall,
                //   ),
                //   onTap: () {},
                //   trailing: Consumer(builder: (context, ref, child) {
                //     final theme = ref.watch(themeModeProvider);
                //     return IconButton(
                //         onPressed: () {
                //           ref.read(themeModeProvider.notifier).state =
                //               theme == ThemeMode.light
                //                   ? ThemeMode.dark
                //                   : ThemeMode.light;
                //         },
                //         icon: Icon(theme == ThemeMode.dark
                //             ? Icons.light_mode
                //             : Icons.dark_mode));
                //   }),
                // ),

                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: defGreyLigthOpacity,
                    child: Icon(
                      Icons.contrast,
                      color: defThemeIconColor(),
                    ),
                  ),
                  title: Text(
                    DefText.tema,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  onTap: () {},
                  trailing: IconButton(
                      onPressed: () {
                        GlobalService.to.switchThemeModel();
                      },
                      icon: Icon(
                        GlobalService.to.isDarkModel == true
                            ? Icons.dark_mode
                            : Icons.light_mode,
                        color: defThemeIconColor(),
                      )),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: defGreyLigthOpacity,
                    child: Icon(
                      Icons.swipe_left,
                      color: defThemeIconColor(),
                    ),
                  ),
                  title: Text(
                    DefText.tutorial,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  onTap: () {},
                ),
                const Divider(
                  color: defGreyLigthOpacity,
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: defGreyLigthOpacity,
                    child: Text(
                      '?',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  title: Text(
                    DefText.sobreServerSoftware,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const ServerSoftwareInfoPage(),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: defGreyLigthOpacity,
                    child: Text(
                      '?',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                  ),
                  title: Text(
                    DefText.sobreColetorVirtual,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const VirtualCollectInfoPage(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 80,
                ),
                Padding(
                  padding: const EdgeInsets.all(defPadding),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: defBlue,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: const Text(
                            DefText.sair,
                            style: defTextMediumWhite,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Versão 1.2-85.555-7",
                    style: defListSubTitle,
                  ),
                )
              ],
            ),
          ),
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.all(defPaddingMedium),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    height: 140,
                    decoration: BoxDecoration(
                      color: defBlue,
                      borderRadius: BorderRadius.circular(defRadiusMedium),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(defPadding),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    child: Image.asset(
                                      assetsBipBarCode,
                                      height: 110,
                                    ),
                                  )
                                ],
                              ),
                              const SizedBox(width: 40),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    DefText.numeroColetas,
                                    maxLines: 1,
                                    style: defTextMediumWhite,
                                  ),
                                  defSizedBoxHeightMedium,
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white12,
                                        borderRadius: BorderRadius.circular(
                                            defRadiusMedium)),
                                    child: const Padding(
                                      padding: EdgeInsets.all(defPadding),
                                      child: Text(
                                        '15153133',
                                        style: defTextLargeWhite,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  defSizedBoxHeightMedium,
                  Text(
                    DefText.coletas + '(6)',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  defSizedBoxHeightMedium,
                  GridView.builder(
                    itemCount: collect.length,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 16 / 4,
                      crossAxisCount: 1,
                      mainAxisSpacing: 10,
                    ),
                    itemBuilder: (context, index) {
                      return Slidable(
                        key: const ValueKey(0),
                        endActionPane: ActionPane(
                          motion: ScrollMotion(),
                          children: [
                            SlidableAction(
                              flex: 2,
                              borderRadius: BorderRadius.all(
                                Radius.elliptical(defRadius, defRadius),
                              ),
                              backgroundColor: defRed,
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: DefText.excluir,
                              onPressed: (BuildContext context) {},
                            ),
                          ],
                        ),
                        child: CollectList(
                          titulo: collect[index].heading,
                          subTitulo: collect[index].subHeading,
                          moreInformationBool: false,
                          leftIcon: PopupMenuButton<String>(
                            color: defGreyLigth,
                            onSelected: choiceAction,
                            itemBuilder: (BuildContext context) {
                              return ExportAction.exportAction
                                  .map((String exportAction) {
                                return PopupMenuItem<String>(
                                  value: exportAction,
                                  child: Text(
                                    exportAction,
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                );
                              }).toList();
                            },
                          ),
                        ),
                      );
                    },
                  ),
                  defSizedBoxHeightMedium,
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void choiceAction(String choice) {
    if (choice == DefText.exportarColeta) {
      print('exportarColeta');
    }
  }
}
