// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
import 'package:recruiter/shared/themes/app_colors.dart';

import '../models/Focus.dart';

part 'focus_store.g.dart';

class FocusStore = _FocusStore with _$FocusStore;

abstract class _FocusStore with Store{

  _FocusStore(
    // ignore: use_function_type_syntax_for_parameters
    // getFocusList()
  );

  @observable
  String goal = '';
  @observable
  String task = '';

  ObservableList<Focus> achieve = ObservableList();

  // @computed
  // List<Achievement> get achieve => achieve;

  @action
  saveFocus(){
    Focus newFocus = Focus(goal: goal, task: task,color: AppColors.green, id: achieve.length);
    achieve.add(newFocus);
  }

  @computed
  bool get formOk =>(goal.isNotEmpty && task.isNotEmpty );

restForm(){
  updategoal('');
  updatetask('');
}

  @action
   getFocusList()  {
    return achieve;
  }

  @action
  clearList(){
    achieve.clear();
  }
  @action
  updatetask(String value){
    task = value;
  }
  @action
  updategoal(String value){
    goal = value;
  }
}