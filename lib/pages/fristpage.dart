import 'package:flutter/material.dart';
import 'package:lap_05/pages/food.dart';

class fristpage extends StatefulWidget {
  const fristpage({super.key});

  @override
  State<fristpage> createState() => _fristpageState();
}

class _fristpageState extends State<fristpage> {
  List<Food> foods = [];
  String groupValue = "";
  @override
  void initState() {
    super.initState();
    foods = Food.getFood();

    print(foods.map((food) => food.engName).toList()[0]);
  }

  List<Widget> creteRadioFood() {
    //เป็นการรีเทรินค่า

    List<Widget> myfood = [];
    for (var fb in foods) {
      myfood.add(RadioListTile(
        title: Text(fb.thaName),
        subtitle: Text(fb.engName),
        secondary: Text("${fb.price} "),
        value: fb.foodvalue,
        groupValue: groupValue,
        onChanged: (value) {
          setState(() {
            groupValue = value!;
          });
        },
      ));
    }
    return myfood;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text("Food I for Golf"),
        ),
        body: Column(
          children: [
            const Text("เลือกเมนูอาหาร", style: const TextStyle(fontSize: 30)),
            Column(
              children: creteRadioFood(),
            ),
            Text(
              groupValue,
              style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.pink),
            )
          ],
        ));
  }
}
