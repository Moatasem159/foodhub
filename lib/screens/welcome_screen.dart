import 'package:flutter/material.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body:Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.transparent,
                  image: DecorationImage(
                    image: AssetImage("lib/global/images/welcome image.jpg"),
                    fit: BoxFit.fill,),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: FractionalOffset.topCenter,
                        end: FractionalOffset.bottomCenter,
                        colors: [
                          Colors.white.withOpacity(0.0),
                          Colors.black45,
                        ],
                        )),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 29,right: 27.5),
                      child: Align(
                          alignment: Alignment.bottomRight,
                          child:
                          ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(27.41))),
                                  padding: MaterialStateProperty.all(const EdgeInsets.all(0)),
                                  fixedSize: MaterialStateProperty.all(const Size(55,32)),
                                  side: MaterialStateProperty.all(const BorderSide(width: 1,color: Colors.white))


                              ),
                              onPressed: (){}, child: const Text("Skip",style:TextStyle(
                              fontFamily: "sofiapro",
                              fontSize: 13,
                              height: 1.5,
                              color: Color(0xFFFE724C)
                          )))),
                    ),
                    welcomeText(),
                    Padding(
                      padding: const EdgeInsets.only(top: 140),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Container(
                            height: 1,
                            width:84,
                            color: Colors.white.withOpacity(.5),

                          ),
                          const SizedBox(
                            width: 22,
                          ),
                          const Text("sign in with",
                              style:TextStyle(
                                fontFamily: "sofiapro",
                                fontSize: 14,
                                height: 1.5,
                                color: Colors.white,
                              )),
                          const SizedBox(
                            width: 22,
                          ),
                          Container(
                            height: 1,
                            width:84,
                            color: Colors.white.withOpacity(.5),

                          ),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 28,),
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
                    Padding(
                      padding: const EdgeInsets.only(top: 23,left: 44,right: 38),
                      child:ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.white.withOpacity(.3)),
                            shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))),
                            padding: MaterialStateProperty.all(const EdgeInsets.symmetric(horizontal:0 )),
                            fixedSize: MaterialStateProperty.all(const Size(450,54)),
                            side: MaterialStateProperty.all(const BorderSide(width: 1,color: Colors.white))


                        ),
                        onPressed: (){},
                        child:const Text("Start with email or phone",
                            style:TextStyle(
                                fontFamily: "sofiapro",
                                fontSize: 17,
                                height: 1.5,
                                color: Colors.white
                            )),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        const Text("Already have an account?",
                            style:TextStyle(
                                fontFamily: "sofiapro",
                                fontSize: 13,
                                height: 1.5,
                                color: Colors.white
                            )),
                        TextButton(
                          style:  ButtonStyle(
                            overlayColor: MaterialStateProperty.all(const Color(0x00000000)),
                          ),
                          onPressed: (){}, child: const Text("sign in",
                            style:TextStyle(
                                fontFamily: "sofiapro",
                                fontSize: 13,
                                height: 1.5,
                                color: Colors.white,
                                decoration: TextDecoration.underline
                            )),)
                      ],
                    )



                  ],
                ),
              ),
          ],
          )

    ));
  }

  Widget welcomeText(){
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top:80,right: 45),
          child: Text("Welcome to",
              style:TextStyle(
                fontFamily: "sofiapro",
                fontSize: 50,
                fontWeight: FontWeight.w700,
              )),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 125,top: 10 ),
          child: Text("FoodHub",
              style:TextStyle(
                fontFamily: "sofiapro",
                fontSize: 45,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFE724C),
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7,right: 79,left: 28),
          child: Text("Your favourite foods delivered fast at your door.",
              style:TextStyle(
                fontFamily: "sofiapro",
                fontSize: 17,
                height: 1.5,
                color: const Color(0xFF30384F).withOpacity(.87),
              )),
        ),
      ],
    );

  }
}
