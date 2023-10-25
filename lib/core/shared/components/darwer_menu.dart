import 'package:awesome_onboarding_screen/core/constants/assets_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/default_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:ternav_icons/ternav_icons.dart';
import '../../../services/global.dart';
import '../../constants/colors_constants.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width / 1.5,
      child: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 190,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: defOrange,
              ),
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
                TernavIcons.lightOutline.home_2,
                color: defGraffiti,
              ),
            ),
            title: Text(
              "Editar layouts de coleta",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: defGreyLigthOpacity,
              child: Icon(
                TernavIcons.lightOutline.home_2,
                color: defGraffiti,
              ),
            ),
            title: Text(
              "Exportar coleta",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            onTap: () {},
          ),
          const Divider(
            color: defGreyLigth,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: defGreyLigthOpacity,
              child: Icon(
                TernavIcons.lightOutline.home_2,
                color: defGraffiti,
              ),
            ),
            title: Text(
              "Configurações do leitor",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            onTap: () {},
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
                TernavIcons.lightOutline.home_2,
                color: defGraffiti,
              ),
            ),
            title: Text(
              'Tema',
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
                )),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: defGreyLigthOpacity,
              child: Icon(
                TernavIcons.lightOutline.home_2,
                color: defGraffiti,
              ),
            ),
            title: Text(
              "Tutorial",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            onTap: () {},
          ),
          const Divider(
            color: defGreyLigth,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: defGreyLigthOpacity,
              child: Icon(
                TernavIcons.lightOutline.home_2,
                color: defGraffiti,
              ),
            ),
            title: Text(
              "Sobre a Server Software",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: defGreyLigthOpacity,
              child: Icon(
                TernavIcons.lightOutline.home_2,
                color: defGraffiti,
              ),
            ),
            title: Text(
              "Sobre o Coletor Virtual",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            onTap: () {},
          ),
          const SizedBox(
            height: 80,
          ),
          Padding(
            padding: const EdgeInsets.all(defPadding),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: defBlue, borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: const Text(
                      "Sair",
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
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.onTap,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      horizontalTitleGap: 0,
      leading: Icon(
        icon,
        color: Colors.grey,
        size: 18,
      ),
      title: Text(
        title,
      ),
    );
  }
}
