import 'package:deacon_school_user/Core/unit/app_routes.dart';
import 'package:deacon_school_user/Core/unit/color_data.dart';
import 'package:deacon_school_user/Core/unit/style_data.dart';
import 'package:deacon_school_user/Feather/Auth/presentation/cubit/auth_cubit.dart';
import 'package:deacon_school_user/generated/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController phoneController = TextEditingController();

  bool loging = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Form(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height:  MediaQuery.sizeOf(context).width*0.9,
                      width: MediaQuery.sizeOf(context).width*0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(23),
                      ),
                      clipBehavior: Clip.antiAlias,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image(
                          image: AssetImage(Assets.imageIcLauncherForeground),
                          fit: BoxFit.cover,
                        ),
                      ),

                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'تسجيل دخول',
                    style: StyleData.textStyleBlackTextColorB40,
                  ),
                ),
                Gap(20),
                TextFormField(
                  controller: phoneController,
                  style: StyleData.textStylePrimaryTextColorSB16,
                  decoration: InputDecoration(
                    labelText: 'رقم الهاتف',
                    labelStyle: StyleData.textStylePrimary60TextColorSB16,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: ColorData.primaryLightColor),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: ColorData.primary60Color),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: ColorData.primaryColor),
                    ),
                  ),
                ),
                Gap(20),
                GestureDetector(
                  onTap: () async {
                    if(!loging) {
                      setState(() {
                        loging = true;
                      });
                      bool login = await context.read<AuthCubit>().login(phoneController.text);

                      setState(() {
                        loging = false;
                      });

                      if(login) {
                        context.go(AppRouter.kAppLayoutView);
                      }
                    }
                  },
                  child: Container(
                    height: 56,
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    decoration: BoxDecoration(
                      color: loging ? ColorData.primary80Color : ColorData.primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(
                          'تسجيل دخول',
                          style: StyleData.textStyleWhiteTextColorM18
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
