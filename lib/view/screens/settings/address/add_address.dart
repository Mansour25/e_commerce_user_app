import 'package:e_commerce_project/controller/settings_controller/address.dart';import 'package:e_commerce_project/core/constant/app_routes_name.dart';import 'package:e_commerce_project/data/data_source/static/static.dart';import 'package:flutter/material.dart';import 'package:get/get.dart';class Add_Address extends StatelessWidget {  const Add_Address({Key? key}) : super(key: key);  @override  Widget build(BuildContext context) {    return Scaffold(      // appBar: AppBar(),      body: GetBuilder<AddressController>(builder: (logic) {        return Container(          height: double.infinity,          width: double.infinity,          child: Center(            child: Column(              mainAxisSize: MainAxisSize.min,              // mainAxisAlignment: MainAxisAlignment.center,              children: [                Align(                  alignment: Alignment.topCenter,                  child: Text(                    'New Address',                    style: Get.textTheme.headline1!.copyWith(                        fontSize: 30,                        fontWeight: FontWeight.w300,                        fontFamily: 'Cairo'),                  ),                ),                SizedBox(                  height: 50,                ),                field_address('Address Name', logic.cont_name),                field_address('City', logic.cont_city),                field_address('Street', logic.cont_street),                Row(                  mainAxisAlignment: MainAxisAlignment.center,                  children: [                    Text(                      'Lat : 0',                      style: Get.textTheme.bodyText1!.copyWith(                          fontSize: 15,                          fontWeight: FontWeight.w300,                          fontFamily: 'Cairo'),                    ),                    SizedBox(                      width: 20,                    ),                    Text(                      'Long : 0',                      style: Get.textTheme.bodyText1!.copyWith(                          fontSize: 15,                          fontWeight: FontWeight.w300,                          fontFamily: 'Cairo'),                    ),                  ],                ),                MaterialButton(                  splashColor: Colors.white10.withOpacity(0.0000001),                  height: 0,                  minWidth: 0,                  // disabledElevation: 0,                  // highlightElevation: 0,                  onPressed: ()                  {                    Get.toNamed(AppRouteName.locate_map);                  },                  child: Container(                    alignment: Alignment.center,                    decoration: BoxDecoration(                        color: Colors.black38,                        borderRadius: BorderRadius.circular(10)),                    height: 25,                    width: 150,                    child: Text('Locate on the map'),                  ),                ),                SizedBox(                  height: 20,                ),                InkWell(                    onTap: () async {                     await logic.add_address(                          user_id,                          logic.cont_name.text.toString(),                          logic.cont_city.text.toString(),                          logic.cont_street.text.toString(),                          logic.latt.toString(),                          logic.longg.toString(),                      );                    },                    child: Container(                      width: 170,                      height: 35,                      alignment: Alignment.center,                      decoration: BoxDecoration(                        color: Colors.deepOrange.shade400,                        borderRadius: BorderRadius.circular(10),                      ),                      child: Text(                        'Add Address',                        style: TextStyle(                          height: 0,                          fontFamily: 'Cairo',                          color: Colors.white,                          fontSize: 19,                          fontWeight: FontWeight.w600,                        ),                      ),                    )),              ],            ),          ),        );      }),    );  }}Widget field_address(  String hint,  TextEditingController controller,) {  return Container(    padding: EdgeInsets.all(10),    width: Get.width - 100,    child: TextField(      controller: controller,      cursorColor: Colors.deepOrange,      // cursorWidth: 1.5,      // cursorRadius: Radius.circular(50),// showCursor: false,      decoration: InputDecoration(        // disabledBorder: OutlineInputBorder(),        hintText: hint,        // fillColor: Colors.orange,        focusedBorder: OutlineInputBorder(          borderSide: BorderSide(color: Colors.deepOrange, width: 2),          borderRadius: BorderRadius.circular(10),        ),        //        // hoverColor: Colors.red,        // focusColor: Colors.deepOrange,        border: OutlineInputBorder(          borderSide: BorderSide(color: Colors.blue, width: 2),          borderRadius: BorderRadius.circular(10),        ),      ),    ),  );}