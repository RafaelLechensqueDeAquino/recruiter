import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../shared/themes/app_colors.dart';
import '../shared/themes/app_text_styles.dart';

class CardCustom extends StatefulWidget {
  const CardCustom({
    Key? key,
    required this.goal,
    required this.task,
    required this.color,
    required this.isCardFocus,
  }) : super(key: key);
  final String goal;
  final String task;
  final Color color;
  final bool isCardFocus;

  @override
  State<CardCustom> createState() => _CardCustomState();
}

class _CardCustomState extends State<CardCustom> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return SizedBox(
      width: 350,
      height: 60,
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: widget.isCardFocus
              ? BorderRadius.zero
              : const BorderRadius.only(
                  bottomRight: Radius.circular(15),
                  topRight: Radius.circular(15)),
          color: widget.isCardFocus ? Colors.transparent : AppColors.rectangle,
        ),
        child: widget.isCardFocus
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                          color: widget.color,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: Builder(builder: (context) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Observer(builder: (context) {
                              return SizedBox(
                                width: 230,
                                child: Text(
                                  widget.task,
                                  style: TextStyles.titleButton,
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              );
                            }),
                            SizedBox(
                              width: 230,
                              child: Text(
                                widget.goal,
                                style: TextStyles.titleTabBar,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        );
                      }),
                    )
                  ])
            : DecoratedBox(
                decoration: BoxDecoration(
                  border:
                      Border(left: BorderSide(color: widget.color, width: 5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              color: widget.color,
                              borderRadius: BorderRadius.circular(50)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 11),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(widget.task, style: TextStyles.titleCard),
                              Text(widget.goal, style: TextStyles.subTitleCard)
                            ],
                          ),
                        )
                      ]),
                ),
              ),
      ),
    );
  }
}
