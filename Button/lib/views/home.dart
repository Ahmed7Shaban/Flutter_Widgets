import 'package:button/buttons/icon_button.dart';
import 'package:flutter/material.dart';

import '../buttons/back_button.dart';
import '../buttons/close_button.dart';
import '../buttons/drop_botton.dart';
import '../buttons/elevated_button.dart';
import '../buttons/floating_actions_button.dart';
import '../buttons/ink_well.dart';
import '../buttons/material_button.dart';
import '../buttons/out_lined_button.dart';
import '../buttons/popup_menu_button.dart';
import '../buttons/text_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButtonWidget(),
              SizedBox(
                height: 20,
              ),
              TextButtonWidget(),
              SizedBox(
                height: 20,
              ),
              OutLinedButtonWidget(),
              SizedBox(
                height: 20,
              ),
              IconButtonWidget(),
              SizedBox(
                height: 20,
              ),
              FloatingActionsButtonWidget(),
              SizedBox(
                height: 20,
              ),
              DropBotton(),
              SizedBox(
                height: 20,
              ),
              PopupMenuButtonWidget(),
              SizedBox(
                height: 20,
              ),
              BackButtonWidget(),
              SizedBox(
                height: 20,
              ),
              CloseButtonWidget(),
              SizedBox(
                height: 20,
              ),
              MaterialButtonWidget(),
              SizedBox(
                height: 20,
              ),
              InkWellWidget(),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
