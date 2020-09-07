import 'package:meta/meta.dart';


class AppState {
  double sliderFontSize;
  bool bold;
  bool italic;
  bool isLogged;
  String phonenumber;
  bool isLoading;
  AppState({@required this.sliderFontSize,this.bold = false,this.italic = false,this.isLogged = false,this.isLoading = false});

  AppState.fromAppState(AppState another) {
    sliderFontSize = another.sliderFontSize;
    bold = another.bold;
    italic = another.italic;
    isLogged = another.isLogged;
    phonenumber = another.phonenumber;
    isLoading = another.isLoading;
  }

  double get viewFontSize => sliderFontSize*30;
  bool get isLoggedIn => isLogged;
  String get phoneNumber => phonenumber;

}