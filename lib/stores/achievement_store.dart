// ignore_for_file: library_private_types_in_public_api

import 'package:mobx/mobx.dart';
import 'package:recruiter/shared/themes/app_colors.dart';

import '../models/Achivement.dart';

part 'achievement_store.g.dart';

class AchievementStore = _AchievementStore with _$AchievementStore;

abstract class _AchievementStore with Store{

  _AchievementStore(
    // ignore: use_function_type_syntax_for_parameters
    // getAchievementList()
  );

  @observable
  String title = '';

  @observable
  List<Achievement> achieve = [];

  // @computed
  // List<Achievement> get achieve => achieve;

  @action
  saveAchievement(){
    Achievement newAchievement = Achievement(title: title, subTitle: '',color: AppColors.green, id: achieve.length);
    achieve.add(newAchievement);
  }

  // @computed
  // String get title => title;

  @action
   getAchievementList()  {
    return achieve;
  }

  @action
  clearList(){
    achieve.clear();
  }
  @action
  updateTitle(String value){
    title = value;
  }
}