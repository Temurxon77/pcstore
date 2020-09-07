import 'package:flutter/material.dart';

class Constants {
  final Color introPageBgColor = Color(0xFAFFFFFF);
  final Color introPageDescriptionTextColor = Color(0xFFD2D2D2); 
  final List<String> assetsListIntroPage = [
    "assets/images/asus_pc.jpg",
    "assets/images/aura_pc.jpg",
    "assets/images/msi_pc.jpg"
  ];
  final List<String> titleTextIntro = [
    "PC STORE!",
    "ASUS ROG Products",
    "MSI accessories!"
  ];
  final List<String> descriptionTextIntro = [
    "PC details for all!",
    "Aura Core Fans,Aura keyboards and more!",
    "MSI headphones,speakers and gaming armchairs"
  ];
  final List<String> menuActivityNames = [
    "Home",
    "All Products",
    "Settings",
    "Help",
    "QR scanner",
    "Exit"
  ];
  final List<Map<String,String>> cartContent = [
    {
    "ContentTitle": "Base Price",
    "ContentValue": "\$5.00",
    "ProductTitle": "intel Core i9 9900K" 
    },
    {
    "ContentTitle": "Base Price",
    "ContentValue": "\$12.00",
    "ProductTitle": "ASUS Rog Strix RTX 2080 Ti" 
    },
    {
    "ContentTitle": "Base Price",
    "ContentValue": "\$15.00",
    "ProductTitle": "MSI Keyboard" 
    },
  ];

  final List<IconData> activityIcons = [
    IconData(0xe88a),
    IconData(0xe896),
    IconData(0xe8b8),
    IconData(0xe887),
    IconData(0xe329),
    IconData(0xe879),
  ];

  final List<int> fontSizeListSettings = [14,16,18,20,24,28,30];
}
