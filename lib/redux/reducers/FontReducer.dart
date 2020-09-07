import 'package:pcstore/redux/actions/LoginAction.dart';
import 'package:pcstore/redux/store/AppState.dart';
import 'package:pcstore/redux/actions/FontAction.dart';


AppState reducer(AppState prevState,dynamic action){
  RegExp phoneNumberRegex = new RegExp(r"^(\+9989(9|8|7|5|3|1|0)[0-9]{7,7})$");
  AppState newState = AppState.fromAppState(prevState);

  if(action is Login){
    if(phoneNumberRegex.hasMatch(action.payload)){
      newState.phonenumber = action.payload;
    }else {
      newState.phonenumber = "";
    }
  } else if(action is IsLogged){
    newState.isLoading = action.payload;
    newState.isLogged = action.payload;
  } else if(action is FontSize){
    newState.sliderFontSize = action.payload;
  } else if(action is Bold){
    newState.bold = action.payload;
  } else if(action is Italic){
    newState.italic = action.payload;
  }

  return newState;
}