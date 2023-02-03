import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:recruiter/shared/themes/app_colors.dart';


import '../../../stores/focus_store.dart';
import '../../../widgets/modal_add_focus_widgets.dart';
import '../../../widgets/card_custom_home_widget.dart';


class DownHomeWidgets extends StatefulWidget {
  const DownHomeWidgets({super.key});

  @override
  State<DownHomeWidgets> createState() => _DownHomeWidgetsState();
}

class _DownHomeWidgetsState extends State<DownHomeWidgets> {
  // final _cardStore = GetIt.I.get<CardStore>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

  // final AchievementStore achievementStore = GetIt.I<AchievementStore>();
  final FocusStore focusStore = GetIt.I<FocusStore>();

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Stack(clipBehavior: Clip.none,
          children:  [
            const Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                // color: AppColors.primary,
                width: 64,
                height: 40,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                  ),
                  child: SizedBox(
                      child: DecoratedBox(
                          decoration: BoxDecoration(
                              color: AppColors.background,
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(40))))),
                ),
              ),
            ),
          Positioned(right: 16,bottom: 12,
            child: Observer(
                  builder: (context) {
                    return ElevatedButton(
                        style: TextButton.styleFrom(
                          shape: const CircleBorder(),
                          padding: const EdgeInsets.all(13),
                          backgroundColor: AppColors.secodary,
                        ),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const ModalAddfocus();
                              });
                        },
                        child: const Icon(
                          Icons.add,
                          size: 33,
                        ));
                  }
                ),
          )],
        ),
        SizedBox(
          height: height * 0.35,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const CardCustom(isCardFocus: false,
                task: 'Meus Objetivos',
                goal: 'O que eu quero alcançar?',
                color: AppColors.primary,
              ),
              SizedBox(
                height: 85,
                child: Stack(
                  children: <Widget>[
                    const CardCustom(isCardFocus: false,
                      task: 'Minhas Equipes',
                      goal: 'Mais fácil em equipe, Chame seus colegas',
                      color: AppColors.primary,
                    ),
                    Positioned(
                        right: 0,
                        bottom: 0,
                        child: Observer(
                          builder: (context) {
                            return ElevatedButton(
                                style: TextButton.styleFrom(
                                  shape: const CircleBorder(),
                                  padding: const EdgeInsets.all(13),
                                  backgroundColor: AppColors.primary,
                                ),
                                onPressed: () {
                                  
                                  focusStore.clearList();
                                  print(focusStore.achieve);
                                  // _cardStore.resetForm();
                                },
                                child: const Icon(
                                  Icons.add,
                                  size: 30,
                                ));
                          }
                        ))
                  ],
                ),
              ),
              const CardCustom(isCardFocus: false,
                task: 'Quero ajuda!',
                goal: 'Deixe-nos te ajudar a focar',
                color: AppColors.secodary,
              )
            ],
          ),
        ),
      ],
    );
  }
}
