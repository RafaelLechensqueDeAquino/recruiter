import 'package:flutter/material.dart';

import '../../../shared/themes/app_colors.dart';
import '../../../shared/themes/app_text_styles.dart';

class ModalAchievement extends StatelessWidget {

  const ModalAchievement({super.key});
  // final AchievementStore achievementStore = GetIt.I<AchievementStore>();

 

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
        insetPadding:
            const EdgeInsets.only(top: 0, left: 23, right: 23, bottom: 0),
        buttonPadding: const EdgeInsets.only(left: 15, right: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: AppColors.rectangle,
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop('dialog');
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
              backgroundColor: AppColors.grey,
              minimumSize: const Size(133, 38),
            ),
            child: const Text('Cancelar'),
          ),
          ElevatedButton(
                // onPressed: _cardStore.dadosPreenchidos ? _cardStore.addCard() : null,
                // onPressed:  _cardStore.addCard(),
                onPressed: (() {
                  
                }),
                style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 12),
                    backgroundColor: AppColors.primary,
                    minimumSize: const Size(133, 38)),
                child: const Text('Salvar Conquista'),
              ),
            
        ],
        scrollable: true,
        titlePadding: const EdgeInsets.all(12),
        title: Text('Adicionar Conquista do Dia:', style: TextStyles.titleCard),
        content: SizedBox(
          width: 314,
          child: Form(
              child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text("Conquista do dia:",
                        style: TextStyles.subTitleCard),
                  ),
                   TextFormField(
                        

                        // onChanged: ((value) =>
                        //     _cardStore.atualizarTitle(title: value)),
                        decoration: InputDecoration(
                            hoverColor: AppColors.background,
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            hintStyle: TextStyles.titlePlaceHolder,
                            hintText: "Conseguir Novos Leads",
                            fillColor: AppColors.background,
                            filled: true,
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6)))),
                      )
                    
                ],
              )
            ],
          )),
        ),
      );
    
  }
}
