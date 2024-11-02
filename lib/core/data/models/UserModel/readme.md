HOW TO CREATE THIS OBJECT BY FREEZED

STEP1: create file ex: HomeGet.dart
STEP2: in file HomeGet.dart, please modify following this style:
    import 'package:freezed_annotation/freezed_annotation.dart';

    part 'HomeGet.freezed.dart';
    part 'HomeGet.g.dart';

    @freezed
    class HomeGet with _$HomeGet {
      factory HomeGet({
        @JsonKey(name: 'id') required int id,                         //DEFINE ENTITY
        @JsonKey(name: 'nameRole') required String nameRole,         //DEFINE ENTITY
        @JsonKey(name: 'descriptionRole') String? descriptionRole,  //DEFINE ENTITY
      }) = _HomeGet;
      factory HomeGet.fromJson(Map<String, Object?> json) =>
          _$HomeGetFromJson(json);
    }
NOTE: don't carry about error, this is just temporary!

STEP 4: open terminal and run: flutter pub run build_runner build --delete-conflicting-outputs 
STEP 5: if all error has been temporary gone, DONE!!

NOTE: ANOTHER UPDATE MODELS: JUST RUN: flutter pub run build_runner build --delete-conflicting-outputs 


