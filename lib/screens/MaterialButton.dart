import 'package:flutter/material.dart';

class MaterialRawButton extends StatelessWidget {
  
  final Function buttonCallback;
  final String buttonText;
  final int buttonTextColorHex;
  final double buttonTextFontSize;
  final double minWidth;
  final double maxWidth;
  final double minHeight;
  final double maxHeight;
  final int colorValueHex;
  final double paddingAll;

  MaterialRawButton({
    @required this.buttonCallback,
    @required this.buttonText,
    @required this.buttonTextColorHex,
    @required this.buttonTextFontSize,
    @required this.minWidth,this.maxWidth,
    @required this.minHeight,this.maxHeight,
    @required this.colorValueHex,
    @required this.paddingAll
  });

  @override
  Widget build(BuildContext context){
    return Padding(child:RawMaterialButton(
      constraints: BoxConstraints(minHeight: this.minHeight,maxHeight: this.maxHeight,minWidth: this.minWidth,maxWidth: this.maxWidth),
      onPressed: buttonCallback,
      fillColor: Color(colorValueHex),
      child: Text(buttonText,style: TextStyle(color: Color(buttonTextColorHex),fontSize: buttonTextFontSize))
    ),
    padding: EdgeInsets.all(this.paddingAll),
    );
  }
}

class MaterialOutlinedButton extends StatelessWidget {
  final Function buttonCallback;
  final String buttonText;
  final int buttonTextColorHex;
  final double buttonTextFontSize;
  final int colorValueHex;
  final int splashColorValueHex;
  final int borderColorValueHex;
  final double borderWidth;
  final double paddingAll;

  MaterialOutlinedButton({@required this.buttonCallback,@required this.buttonText,@required this.buttonTextColorHex,
    @required this.buttonTextFontSize,@required this.colorValueHex,@required this.paddingAll,
    @required this.splashColorValueHex,@required this.borderColorValueHex,@required this.borderWidth});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: EdgeInsets.all(this.paddingAll),
      child: OutlineButton(
        borderSide: BorderSide(
          color: Color(this.borderColorValueHex),
          width: this.borderWidth
        ),
        splashColor: Color(this.splashColorValueHex),
        onPressed: this.buttonCallback,
        color: Color(colorValueHex),
        child: Text(this.buttonText,style: TextStyle(fontSize: this.buttonTextFontSize,color: Color(this.buttonTextColorHex)))
      )
    );
  }
}