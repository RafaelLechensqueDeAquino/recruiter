import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:recruiter/widgets/card_custom_home_widget.dart';
import 'package:recruiter/shared/themes/app_colors.dart';
import 'package:recruiter/shared/themes/app_text_styles.dart';

import '../../../stores/focus_store.dart';
import '../../../widgets/modal_achievement_widgets.dart';
import '../../../widgets/modal_add_focus_widgets.dart';

class TopHomeWidget extends StatelessWidget {
  const TopHomeWidget({super.key});

  // final cardStore = GetIt.I.get<CardStore>();
  @override
  Widget build(BuildContext context) {
    // final AchievementStore achievementStore = GetIt.I<AchievementStore>();
    final FocusStore focusStore = GetIt.I<FocusStore>();

    focusStore.getFocusList();
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    List<Widget> mywidgets = [];
    for (int x = 1; x <= 3; x++) {
      mywidgets.add(Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          width: 2,
          height: 2,
          color: AppColors.whiteDark,
        ),
      ));
    }

    return Observer(builder: (context) {
      return ConstrainedBox(
        constraints:
            const BoxConstraints(minWidth: double.infinity, minHeight: 180.83),
        
        child: DecoratedBox(
          decoration: const BoxDecoration(
            color: AppColors.primary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 16, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //arruma aqui
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const ModalAchievement();
                          });
                    },
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Conquista do dia', style: TextStyles.h2),
                          Text('(Clique aqui e defina uma conquista para hoje)',
                              style: TextStyles.span)
                        ])),
                focusStore.achieve.isEmpty
                    ? TextButton(
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return const ModalAddfocus();
                              });
                        },
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Foco de Hoje', style: TextStyles.h1),

                              // ignore: dead_code
                              Text(
                                  '(Clique aqui, avalie seus objetivos, priorize seu dia)',
                                  style: TextStyles.span)
                            ]))
                    : Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Foco de Hoje', style: TextStyles.h1),

                              // ignore: dead_code
                              Container(margin: const EdgeInsets.only(bottom: 16),
                                child: ConstrainedBox(
                                  constraints: const BoxConstraints(
                                      maxHeight: 260),
                                  // height: 80,
                                  // height: 260,
                                  child: Observer(builder: (context) {
                                    return ListView.builder(
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        itemCount: focusStore.achieve.length,
                                        // itemCount: 0,
                                        itemBuilder: ((context, index) {
                                          return Observer(builder: (context) {
                                            return Stack(
                                              children: [
                                                index > 0
                                                    ? Align(
                                                        heightFactor: 0,
                                                        widthFactor: 5,
                                                        child: Column(
                                                            children: mywidgets))
                                                    : const SizedBox.shrink(),
                                                CardCustom(isCardFocus: true,
                                                  key: ValueKey(focusStore
                                                      .achieve[index].id),
                                                  task: focusStore
                                                      .achieve[index].task,
                                                  goal: focusStore
                                                      .achieve[index].goal,
                                                  color: focusStore
                                                      .achieve[index].color,
                                                  // color: listaTest[index]['color'],
                                                ),
                                              ],
                                            );
                                          });
                                        }));
                                  }),
                                ),
                              )
                            ]),
                      )
              ],
            ),
          ),
        ),
      );
    });
  }
}
