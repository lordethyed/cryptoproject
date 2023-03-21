import 'package:crypto_flutter_project/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:crypto_flutter_project/font_const/font_const.dart';
import 'package:crypto_flutter_project/presentation/home/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:
          Container(
            color: AppColors.backgroundColor,
            padding: const EdgeInsets.all(20.0),
            child:
                Column(
                children: [
                Row(
                  children: [
                    SvgPicture.asset("assets/img/more.svg",),
                    const SizedBox(width: 8,),
                    Text("BTC/USDT",style: popins600(),),
                    const SizedBox(width: 10),
                    ContainerWidget(name: "+2.38",colorButton: AppColors.greenColorOpacity12,colorText: AppColors.greenColorTabBar,width: 64,fontWeight: FontWeight.w500),
                    const Spacer(),
                    SvgPicture.asset("assets/img/filter.svg"),
                    const SizedBox(width: 20,),
                    SvgPicture.asset('assets/img/dots.svg'),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          const ButtonWidget(name: '43,805.35',colorText: AppColors.whiteColor,colorButton: AppColors.buttonColor,),
                          const SizedBox(height: 15,),
                          ButtonWidget(name: 'Amount (BTC)', colorText: AppColors.whiteColorOpacity40, colorButton: AppColors.buttonColor),
                          const SizedBox(height: 15,),
                          Image.asset("assets/img/lines.png"),
                          const SizedBox(height: 25,),
                          ButtonWidget(name: 'Total (USDT)', colorText: AppColors.whiteColorOpacity40, colorButton: AppColors.buttonColor),
                          const SizedBox(height: 15,),
                          Row(children: [
                            Text('Abvl', style: popins600size13Blackcolor(),),
                            const Spacer(),
                            Text('1 000.00 USDT', style: popins600size13Whitecolor(),),
                            const SizedBox(width: 5,),
                            const GestureDetectorPlussButton(),
                          ],),
                          const SizedBox(height: 15,),
                          const ButtonWidget(name: 'Buy BTC', colorText: AppColors.whiteColor, colorButton: AppColors.greenColorTabBar)
                        ],),),
                    const SizedBox(width: 20,),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Image.asset("assets/img/firstgraph.png"),
                          const SizedBox(height: 35,),
                          Image.asset("assets/img/secondgraph.png"),
                          const SizedBox(height: 35,),
                          Row(
                            children: [
                              InkWell(
                              onTap: () {},
                              child: Container(
                                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
                                  height: 30,
                                  decoration: BoxDecoration(
                                    color: AppColors.buttonColor,
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Row(
                                    children:[
                                      Text('0.01', style: popins600size13Whitecolor(),),
                                      const SizedBox(width: 20,),
                                      const Icon(Icons.expand_more,size: 14,color: AppColors.whiteColor,),
                                    ]),
                                  ),
                              ),
                              const SizedBox(width: 10,),
                              SvgPicture.asset('assets/img/red_green.svg')
                            ],
                          ),
                      ],),),
                  ],),
                  const SizedBox(height: 28,),
                  Row(
                    children: [
                      const ContainerWidget(name: "Open Orders (4)", colorText: AppColors.whiteColor, colorButton: AppColors.buttonColor, width: 145,fontWeight: FontWeight.w600),
                      const SizedBox(width: 20,),
                      Text('Funds',style : popins600size14Blackcolor()),
                      const Spacer(),
                      SvgPicture.asset('assets/img/list.svg', height: 16, width: 14,),
                    ],
                  ),
                  const SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    const SizedBox(width: 4,),
                    const SizedBoxCheckBox(),
                    const SizedBox(width: 10,),
                    Text('Show all ' ,style: popins600size14Blackcolor(),),
                    const Spacer(),
                    const ContainerWidget(name: 'Cancel all', colorText: AppColors.whiteColor, colorButton: AppColors.buttonColor, width: 90, fontWeight: FontWeight.w600)
                  ],),
                  const SizedBox(height: 10,),
                  const ColumnListView(name: 'TBCC / USDT', time: "2022-03-06 17:50:12",limitName: "Limit / Sell",green: false,amount: '/4407,32',price: "0,0673",),
                  const SizedBox(height: 20),
                  const ColumnListView(name: 'BTC / USDT', time: "2022-03-05 16:45:24",limitName: "Limit / Buy",green: true,amount: '/0,32500543',price: "23,900",),
    ]
      ),
    ),
    ));
  }
}


