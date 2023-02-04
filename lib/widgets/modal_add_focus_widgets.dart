import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';

import '../../../shared/themes/app_colors.dart';
import '../../../shared/themes/app_text_styles.dart';
import '../../../stores/focus_store.dart';

class ModalAddfocus extends StatelessWidget {
  const ModalAddfocus({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final FocusStore focusStore = GetIt.I<FocusStore>();
    // ignore: no_leading_underscores_for_local_identifiers
    _onPressed() {
      focusStore.saveFocus();
      // Navigator.of(context, rootNavigator: true).pop('dialog');
      // focusStore.restForm();
    }

    return AlertDialog(
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
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
            backgroundColor: AppColors.grey,
            minimumSize: const Size(133, 38),
          ),
          child: const Text('Cancelar'),
        ),
        Observer(builder: (context) {
          return ElevatedButton(
            onPressed:()=>  _onPressed(),
            style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 8),
                backgroundColor: AppColors.primary,
                minimumSize: const Size(133, 38)),
            child: const Text('Salvar Foco de Hoje'),
          );
        }),
      ],
      scrollable: true,
      titlePadding: const EdgeInsets.all(12),
      title: Text('Adicionar Conquista do Dia:', style: TextStyles.titleCard),
      content: SizedBox(
        width: 314,
        height: 170,
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text("Objetivo global a ser atingido:",
                      style: TextStyles.subTitleCard),
                ),
                Observer(builder: (context) {
                  return TextFormField(
                    onChanged: (value) {
                      // print(value);
                      focusStore.updategoal(value);
                    },
                    decoration: InputDecoration(
                        hoverColor: AppColors.background,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintStyle: TextStyles.titlePlaceHolder,
                        hintText: "Aumentar leads e contatos",
                        fillColor: AppColors.background,
                        filled: true,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(6)))),
                  );
                }),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text("Tarefas para atingir o Objetivo:",
                      style: TextStyles.subTitleCard),
                ),
                Observer(builder: (context) {
                  return TextFormField(
                    onChanged: (value) {
                      // print(value);
                      focusStore.updatetask(value);
                    },
                    decoration: InputDecoration(
                        hoverColor: AppColors.background,
                        floatingLabelBehavior: FloatingLabelBehavior.never,
                        hintStyle: TextStyles.titlePlaceHolder,
                        hintText: "Pesquisar Clientes Locais",
                        fillColor: AppColors.background,
                        filled: true,
                        border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(6)))),
                  );
                }),
              ],
            )
          ],
        )),
      ),
    );
    
  }
}
