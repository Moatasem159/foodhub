import 'package:flutter/material.dart';
import 'package:foodhub/global/colors.dart';

class MainButton extends StatelessWidget {

  final  VoidCallback? onPressed;
  final String label;
  const MainButton({Key? key, required this.onPressed, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(28.5),
        )),
        backgroundColor: MaterialStateProperty.all(defaultColor),
        fixedSize: MaterialStateProperty.all(const Size(248, 57))
      ),
      onPressed:onPressed,
      child: Text(label,style: Theme.of(context).textTheme.subtitle1!.copyWith(
        color: Colors.white,
        fontSize: 15,
      ),),
    );

  }
}




class MainBackButton extends StatelessWidget {
  final  VoidCallback? onPressed;

  const MainBackButton({Key? key,this.onPressed,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      Navigator.of(context).pop();
    },
        child: const Icon(Icons.arrow_back_ios_rounded,color: Colors.black,size: 14,),
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.white),
        minimumSize: MaterialStateProperty.all(const Size(34,34)),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(10),
        )),
        shadowColor: MaterialStateProperty.all(Colors.black),




      ),
    );
  }
}
