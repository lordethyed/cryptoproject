import 'package:flutter/material.dart';
import 'package:crypto_flutter_project/colors/colors.dart';
import 'package:crypto_flutter_project/font_const/font_const.dart';

class SizedBox15Widget extends StatelessWidget {
  const SizedBox15Widget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 15,
    );
  }
}


class ButtonWidget extends StatelessWidget {
  final String name;
  final Color colorText;
  final Color colorButton;
  const ButtonWidget(
      {Key? key,
      required this.name,
      required this.colorText,
      required this.colorButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      // height: 42,
      decoration: BoxDecoration(
        color: colorButton,
        //color: const Color(0xFF333A47),
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.remove,
              color: Colors.white.withOpacity(0.4),
            ),
          ),
          const Spacer(),
          Text(
            name,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: 'Poppins',
              color: colorText,
              //color: Colors.white,
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {},
            child: Icon(
              Icons.add,
              color: Colors.white.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final String name;
  final Color colorText;
  final Color colorButton;
  final double width;
  final FontWeight fontWeight;

  const ContainerWidget({
    super.key, required this.name, required this.colorText, required this.colorButton, required this.width, required this.fontWeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.symmetric(vertical: 2, horizontal: 8),
      width: width,
      height: 24,
      decoration:
        BoxDecoration(
          color: colorButton,
          borderRadius: BorderRadius.circular(6)),
        child: Text(name,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14,
          fontWeight: fontWeight,
          fontFamily: 'Poppins',
          color: colorText,
    )
    )
    );
  }
}
class GestureDetectorPlussButton extends StatelessWidget {
  const GestureDetectorPlussButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Hi');
      },
      child: Container(
        height: 14,
        width: 14,
        decoration: const BoxDecoration(
            color: Color(0xFF7D8696),
            shape: BoxShape.circle),
        child: const Icon(
          Icons.add,
          color: Colors.white,
          size: 14,
        ),
      ),
    );
  }
}
class ColumnListView extends StatelessWidget {
  final String name;
  final String time;
  final String limitName;
  final bool green;
  final String amount;
  final String price;
  const ColumnListView({
    super.key, required this.name, required this.time, required this.limitName, required this.green, required this.amount, required this.price,
  });

  @override
  Widget build(BuildContext context) {
    var styleSetting;
    if(green){
      styleSetting = popins700size14Greencolor();
    }
    else{
      styleSetting = popins700size14Redcolor();
    }
    return Column(
      children: [
        Container(height: 1,color: AppColors.buttonColor,),
        const SizedBox(height: 15),
        Row(
          children: [
            Text(name, style: popins700size14Whitecolor(),),
            const Spacer(),
            Text(time, style: popins600size14Blackcolor(),),
          ],
        ),
        Row(
          children: [
            Text(limitName, style: styleSetting,),
        ]
        ),
        Row(children: [
          Text('Amount', style: popins600size14Blackcolor(),),
          const SizedBox(width: 35,),
          Text('0,00', style: popins700size14Whitecolor()),
          Text(amount, style: popins600size14Blackcolor(),)
        ],),
        Row(children: [
          Text('Price', style: popins600size14Blackcolor(),),
          const SizedBox(width: 54,),
          Text(price, style: popins700size14Whitecolor()),
          const Spacer(),
          const ContainerWidget(name: 'Cancel', colorText: AppColors.whiteColor, colorButton: AppColors.buttonColor, width: 65, fontWeight: FontWeight.w600),
        ],)
      ],
    );
  }
}
class SizedBoxCheckBox extends StatelessWidget {
  const SizedBoxCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 14,
      height: 14,
      child:
      Checkbox(value: true,
        fillColor: const MaterialStatePropertyAll(Colors.blue),onChanged: (value) => true,),
    );
  }
}
