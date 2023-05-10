
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';


import '../../data_base/sqflite/note.dart';

import '../../static/Colors.dart';
import '../controller/cart_page_controller.dart';
import '../static/create_toast.dart';



class HomePage extends StatelessWidget {

  final homePageController = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [

          Expanded(child: Container(
              decoration: const BoxDecoration(
                color:bgColor,
              ),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    color: titleBarColor,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 27,
                          // height: 50,
                        ),

                        Flex(direction: Axis.horizontal,
                          children: [

                            SizedBox(width: 5,),

                            IconButton(
                              iconSize: 25,
                              icon:Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                Get.back();
                              },
                            ),

                            SizedBox(width: 5,),

                            Expanded(child: Text(
                              "Subject Name List",
                              style: TextStyle(color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17
                              ),
                            )),





                          ],
                        ),

                        SizedBox(
                          height: MediaQuery.of(context).size.height / 135,
                          // height: 50,
                        ),
                      ],
                    ),
                  ),








                  Expanded(child: ListView.builder(
                      padding: EdgeInsets.zero,
                      // itemCount: cartPageController.cartList.length,
                      itemCount: 15,
                      // shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (BuildContext context, int index) {
                        // _showToast(cartPageController.cartList[index].productPhoto.toString());
                        return listItemDesign();
                      }))

                ],
              )

          )),

        ],
      ),
    );

  }



  Widget listItemDesign(){
    return  Padding(padding: const EdgeInsets.only(right:15,top: 7,left: 15,bottom: 7),
      child: InkWell(
        onTap: (){

        },
        child: Container(
          height: 55.0,
          decoration: BoxDecoration(
            color: mainPageListItemBgColor,
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          child: Row(
            children: [
              Expanded(child:  Align(
                alignment: Alignment.center,
                child:Text(
                  "Subject name",
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  maxLines: 1,
                  style: TextStyle(
                      color:textColor,
                      fontSize: 18,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w500),
                ),
              )),

              Container(height: 40,
              width: 1,
                color: textColor,
              ),
              Container(
                child: IconButton(
                  icon: Icon(
                    Icons.mode_edit,
                    size: 20,
                  color: textColor,
                  ),
                  onPressed: () {
                    showToastShort("edit");
                    // do something when the button is pressed
                  },
                ),
              )


            ],
          ),
        ),
      ),
    );
  }




}

