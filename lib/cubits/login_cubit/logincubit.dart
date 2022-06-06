import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodhub/cubits/login_cubit/loginstates.dart';


class LoginCubit extends Cubit<LoginStates>{

  LoginCubit (): super(LoginInitialState());
  static LoginCubit get(context)=>BlocProvider.of(context);

  TextEditingController emailController=TextEditingController();

  TextEditingController passwordController=TextEditingController();



  IconData passwordIcon=Icons.visibility;
  bool obscurePassword=true;


  changePasswordVisibility(){
    obscurePassword=!obscurePassword;
    passwordIcon=obscurePassword?Icons.visibility:Icons.visibility_off_rounded;
    emit(ChangePasswordVisibilityState());

  }


  userLogin({required String email, required String password}) {

    emit(LoginLoadingState());
    FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email, password: password).then((value){
      emit(LoginSuccessState(uId: value.user!.uid));
    }).catchError((onError){
      emit(LoginErrorState(error: onError));
    });
  }








}