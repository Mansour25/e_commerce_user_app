import 'package:flutter/material.dart';// import 'package:flutter/material.dart';class Custom_Button_Auth extends StatelessWidget {final String txt ;final void Function() ? onPressed ;const Custom_Button_Auth({Key? key, required this.txt, required this.onPressed}) : super(key: key);  @override  Widget build(BuildContext context) {    return Container(      margin: EdgeInsets.only(top: 10,),      child: MaterialButton(        padding: EdgeInsets.symmetric(vertical: 12),        shape: RoundedRectangleBorder(          borderRadius: BorderRadius.circular(20),        ),        color: Colors.deepOrangeAccent ,        onPressed: onPressed,        child: Text(txt,style: Theme.of(context).textTheme.bodyText1!.copyWith(          fontSize: 15,color: Colors.white        ),),        textColor: Colors.white,      ),    );  }}