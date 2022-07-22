import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(right: 20,left: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BuildContainerBottonNav(Icons.compare_arrows_outlined),
              BuildContainerBottonNav(Icons.pie_chart),
              BuildContainerBottonNav(Icons.home, isSelected: true),
              BuildContainerBottonNav(Icons.candlestick_chart_outlined),
              BuildContainerBottonNav(Icons.account_circle_rounded),

            ],
          ),
        ),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            children: [
             Padding(
               padding: const EdgeInsets.only(top: 10,right: 8,left: 8),
               child: Row(
                 children: [
                   IconButton(
                       onPressed: (){},
                     icon: Icon(Icons.menu,
                       size: 30,
                       color: getColorFromHex('#051E37'),
                     ),),
                   SizedBox(width: 10,),
                   Text('Alex Julia',
                     style: GoogleFonts.ubuntu(
                       textStyle: TextStyle(
                         fontWeight: FontWeight.w600,
                         fontSize: 25,
                         color: getColorFromHex('#051E37'),
                       )),),
                   SizedBox(width: 100,),
                   IconButton(
                     onPressed: (){}, icon: Icon(Icons.search,size: 30, color: getColorFromHex('#051E37'),),),
                   SizedBox(width: 7,),
                   IconButton(
                     onPressed: (){}, icon: Icon(Icons.notifications,size: 30, color: getColorFromHex('#051E37'),),),

                 ],
               ),
             ),

              Padding(
                padding: const EdgeInsets.only(top: 25,right:20,left: 20 ),
                child: Container(
                  height: 200,
                  width: 350,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(22),
                    color: getColorFromHex('#051E37'),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 35,
                        left: 29,
                        child: Text('Portfolio value',
                        style: GoogleFonts.inter(textStyle: TextStyle(
                              fontSize: 12,
                              color: getColorFromHex('#E9EDF2'),
                            )),),),
                      Positioned(
                        top: 60,
                        left: 29,
                        child: Text("\$15,132.32",
                          style: GoogleFonts.roboto(textStyle: TextStyle(
                            fontSize: 30,
                            color: getColorFromHex('#E9EDF2'),
                          )),),),
                      Positioned(
                        top :50,
                        left: 185,
                        child: Text("2.11%🠕",
                        style: GoogleFonts.roboto(textStyle: TextStyle(
                          fontSize: 18,
                          color: getColorFromHex('#079D53'),
                        ),)),),
                      Positioned(
                        top: 120,
                        left: 29,
                        child: Row(
                          children: [
                            Container(
                                child: Center(child: Text('Deposit',style: TextStyle(
                                  fontSize: 14,
                                ),)),
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: getColorFromHex('#68D99A'),

                                )),
                            SizedBox(width: 10,),
                            Container(
                                child: Center(child: Text('Withdraw',style: TextStyle(
                                  fontSize: 14,
                                ),)),
                                height: 40,
                                width: 120,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: getColorFromHex('#E9EDF2'),

                                ))

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              /*SizedBox(height: 20,),*/
              Padding(
                padding: const EdgeInsets.only(top: 30,right: 20,left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Watchlist",style: GoogleFonts.heebo(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: getColorFromHex('#051E37'),
                    ),),),
                    TextButton(onPressed: (){},child: Text("See All",style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: getColorFromHex('#079D53'),
                      ),),),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only( left: 15),
                child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5),
                      height: 160,
                      width: 230,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: getColorFromHex('#E9EDF2'),
                        ),),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 160,
                          width: 240,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: getColorFromHex('#E9EDF2'),
                          ),),
                        Container(
                          margin: EdgeInsets.all(5),
                          height: 160,
                          width: 240,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: getColorFromHex('#E9EDF2'),
                          ),),

                      ],
                    ),
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10,left:20),
                child: Row(
                  children: [
                    Text("Stocks Activity",style: GoogleFonts.heebo(
                      textStyle: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 18,
                        color: getColorFromHex('#051E37'),
                      ),),),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,left: 20,right: 20),
                height: 80,
                width: 350,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: getColorFromHex('#E9EDF2'),
                ),
              child: Stack(
                children: [
                  Positioned(
                    top: 15,
                    left: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        color:  getColorFromHex('#051E37'),
                        shape: BoxShape.circle,
                      ),
                      height: 50,
                      width: 50,
                      child: Icon(Icons.account_balance_wallet_outlined,color: getColorFromHex('#E9EDF2'),size: 25,),

                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 75,top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text("NVDA",style: GoogleFonts.heebo(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: getColorFromHex('#051E37'),
                              ),),),
                            Text("Nvidia"),
                          ],
                        ),
                        Column(
                          children: [
                            Text("25.94",style: GoogleFonts.heebo(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: getColorFromHex('#68D99A'),
                              ),),),
                            Text("29.5%",style: TextStyle(color:getColorFromHex('#68D99A')),),
                          ],
                        ),
                        Column(
                          children: [
                            Text("\$227.56",style: GoogleFonts.heebo(
                              textStyle: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: getColorFromHex('#051E37'),
                              ),),),
                            Text("10 shares"),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),),


            ],
          ),
        ),
      ),
    );
  }
}

//container for bottom navigation bar icons

Container BuildContainerBottonNav(IconData icon ,{isSelected = false}){
  return  Container(
    decoration: BoxDecoration(
      color: isSelected? getColorFromHex('#68D99A'):Colors.white,
      shape: BoxShape.circle,
    ),
    height: 60,
    width: 60,
    child: Icon(icon, color: isSelected ? Colors.white: getColorFromHex('#051E37'),size: 30,),
  );
}
//hex color
Color getColorFromHex(String hexColor) {
  hexColor = hexColor.toUpperCase().replaceAll('#', '');

  if (hexColor.length == 6) {
    hexColor = 'FF' + hexColor;
  }


  return Color(int.parse(hexColor, radix: 16));
}
//white : #E9EDF2
//blue: #051E37
//green: #68D99A