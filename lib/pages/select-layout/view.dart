import 'package:awesome_onboarding_screen/core/constants/default_constants.dart';
import 'package:awesome_onboarding_screen/core/constants/default_text_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../../core/shared/components/collect_cards_widget.dart';
import '../../core/shared/components/collect_list_widget.dart';
import '../../data/data.dart';
import '../scanner-collection-default/view.dart';
import 'controller.dart';

class SelectLayoutPage extends StatefulWidget {
  const SelectLayoutPage({super.key});

  @override
  State<SelectLayoutPage> createState() => _SelectLayoutPageState();
}

class _SelectLayoutPageState extends State<SelectLayoutPage> {
  bool isCard = false;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectLayoutController>(
      init: SelectLayoutController(),
      id: "select-layout",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text(DefText.selectLayout),
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    isCard = !isCard;
                  });
                },
                icon: Icon(
                  isCard ? Icons.list : Icons.grid_view,
                ),
              )
            ],
          ),
          body: isCard
              ? SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(defPaddingMedium),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        GridView.builder(
                          itemCount: layout.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  mainAxisSpacing: 10,
                                  crossAxisSpacing: 10),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) =>
                                        const ScannerCollectionDefaultPage(),
                                  ),
                                );
                              },
                              child: CollectCards(
                                titulo: layout[index].heading,
                                subTitulo: layout[index].subHeading,
                                moreInformation: '5646546546546465465465',
                                moreInformationBool: true,
                                leftIcon: SizedBox(
                                  width: 1,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                )
              : SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(defPaddingMedium),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        GridView.builder(
                          itemCount: layout.length,
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 16 / 4,
                            crossAxisCount: 1,
                            mainAxisSpacing: 10,
                          ),
                          itemBuilder: (context, index) {
                            return InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                    builder: (context) =>
                                        const ScannerCollectionDefaultPage(),
                                  ),
                                );
                              },
                              child: CollectList(
                                titulo: layout[index].heading,
                                subTitulo: layout[index].subHeading,
                                moreInformation: '5646546546546465465465',
                                moreInformationBool: true,
                                leftIcon: SizedBox(
                                  width: 1,
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
        );
      },
    );
  }
}
