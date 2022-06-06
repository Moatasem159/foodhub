import 'package:buildcondition/buildcondition.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodhub/cubits/home_cubit/home_cubit.dart';
import 'package:foodhub/cubits/login_cubit/logincubit.dart';
import 'package:foodhub/cubits/login_cubit/loginstates.dart';
import 'package:foodhub/global/colors.dart';
import 'package:foodhub/global/widgets/buttons.dart';
import 'package:foodhub/global/widgets/painting.dart';
import 'package:foodhub/global/widgets/textformfield.dart';
import 'package:foodhub/global/widgets/toast.dart';
import 'package:foodhub/helper/endpoints.dart';
import 'package:foodhub/helper/shered_prefrence/shared_preferences_helper.dart';
import 'package:foodhub/screens/home_screen.dart';
import 'package:foodhub/screens/signing/sign_up_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    GlobalKey<FormState> formKey = GlobalKey();
    return  BlocProvider(
      create: (context) => LoginCubit(),
      child: BlocConsumer<LoginCubit,LoginStates>(
        listener:(context, state){
          if(state is LoginSuccessState)
            {
             MyShared.saveData(key: 'uId', value: state.uId).then((value){
                HomeCubit.get(context).getUserData();
                uID=state.uId;
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(
                  builder: (context) => const HomeScreen(),), (route) => false);
              });

            }
          else if (state is LoginErrorState)
          {

           if(state.error.toString() == "[firebase_auth/wrong-password] The password is invalid or the user does not have a password.")
         {
           showToast(msg: "Wrong Password", state: ToastStates.ERROR);
          }
            if(state.error.toString() == "[firebase_auth/user-not-found] There is no user record corresponding to this identifier. The user may have been deleted.")
            {
              showToast(msg: "User Not Found", state: ToastStates.ERROR);
            }

          }
        },
         builder: (context,state){
           LoginCubit cubit =LoginCubit.get(context);
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: SafeArea(
                child: Scaffold(
                  body: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:  [
                        Stack(
                          children:  const [
                            CustomShapes(),
                            Positioned(
                                top: 20,
                                left: 20,
                                child: MainBackButton()),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 26),
                          child: Text("Login",style:
                          Theme.of(context).textTheme.headline1!.copyWith(
                            color: Theme.of(context).primaryColorLight,
                            fontSize: 36.41,

                          ),),
                        ),
                        const SizedBox(height: 31,),
                        Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: MainTextFormField(
                                  obscure: false,
                                  controller: cubit.emailController,
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return "E-mail is required";
                                    }
                                    else if (!EmailValidator.validate(value)) {
                                      return "Wrong E-mail";
                                    }
                                    else {
                                      return null;
                                    }
                                  },
                                  textFormFieldName:"E-mail" ,
                                  context: context,
                                  hintText: "E-mail",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: MainTextFormField(
                                   obscure: cubit.obscurePassword,
                                    validator: (value) {
                                      if (value!.isEmpty) {
                                        return "password is required";
                                      }
                                      return null;
                                    },
                                    textFormFieldName:"Password" ,
                                    suffixIcon:GestureDetector(
                                      onTap: () => cubit.changePasswordVisibility(),
                                        child: Icon(cubit.passwordIcon)),
                                    context: context,
                                    hintText: "Password",
                                    controller: cubit.passwordController),
                              ),
                              const SizedBox(height: 25,),
                              Center(
                                child: TextButton(
                                  style:  ButtonStyle(
                                    alignment: Alignment.centerLeft,
                                    padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 2)),
                                    overlayColor: MaterialStateProperty.all(const Color(0x00000000)),
                                  ),
                                  onPressed: (){},
                                  child: const Text("Forgot password?",
                                      style:TextStyle(
                                        fontFamily: "sofiapro",
                                        fontSize: 14,
                                        height: 1.4,
                                        color: defaultColor,
                                      )),),
                              ),
                              BuildCondition(
                                condition: state is!LoginLoadingState,
                                builder: (context){
                                  return Center(
                                      child: MainButton(
                                        onPressed: (){
                                          if(formKey.currentState!.validate()){
                                            LoginCubit.get(context).userLogin(
                                                email: LoginCubit.get(context).emailController.text,
                                                password: LoginCubit.get(context).passwordController.text);
                                          }
                                        },
                                        label: "LOGIN",
                                      ));
                                },
                                fallback: (context)=>const Center(child: CircularProgressIndicator()),
                              ),

                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            const Text("Don’t have an account?",
                                style:TextStyle(
                                    fontFamily: "sofiapro",
                                    fontSize: 13,
                                    height: 1.5,
                                    color: Colors.black
                                )),
                            TextButton(
                              style:  ButtonStyle(
                                alignment: Alignment.centerLeft,
                                padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal: 2)),
                                overlayColor: MaterialStateProperty.all(const Color(0x00000000)),
                              ),
                              onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignUpScreen(),));
                              },
                              child: const Text("Sign Up",
                                  style:TextStyle(
                                      fontFamily: "sofiapro",
                                      fontSize: 13,
                                      height: 1.5,
                                      color: defaultColor,
                                      decoration: TextDecoration.underline
                                  )),)
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:  [
                            Container(
                              height: 1,
                              width:84,
                              color: Colors.grey.withOpacity(.5),

                            ),
                            const SizedBox(
                              width: 22,
                            ),
                            Text("sign in with",
                                style:TextStyle(
                                    fontFamily: "sofiapro",
                                    fontSize: 14,
                                    height: 1.5,
                                    color: Theme.of(context).primaryColorLight
                                )),
                            const SizedBox(
                              width: 22,
                            ),
                            Container(
                              height: 1,
                              width:84,
                              color: Colors.grey.withOpacity(.5),

                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(27.41))),
                                      padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                                      fixedSize: MaterialStateProperty.all(const Size(139.26,54))
                                  ),
                                  onPressed: (){},
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.facebook,color: Colors.blue[600],size: 30,),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      const Text("FACEBOOK",
                                          style:TextStyle(
                                              fontFamily: "sofiapro",
                                              fontSize: 13,
                                              height: 1.5,
                                              color: Colors.black
                                          )),
                                    ],)
                              ),
                              const SizedBox(width: 15,),
                              ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.white),
                                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(27.41))),
                                      padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                                      fixedSize: MaterialStateProperty.all(const Size(139.26,54))


                                  ),
                                  onPressed: (){},
                                  child:Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Image(
                                        image:
                                        AssetImage("lib/global/images/google logo.png"),
                                        height: 35,
                                        width:35,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("GOOGLE",
                                          style:TextStyle(
                                              fontFamily: "sofiapro",
                                              fontSize: 13,
                                              height: 1.5,
                                              color: Colors.black
                                          )),
                                    ],)
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
          );
         }
      ),
    );
  }
}
