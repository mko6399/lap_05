class Food {
  final engName;
  final thaName;
  final foodvalue;
  final price;

  Food(
      {required this.engName,
      required this.thaName,
      required this.foodvalue,
      required this.price});

  static List<Food> getFood() {
    return [
      Food(
          engName: "Tom Yum Goong",
          thaName: "ต้มยำกุ้ง",
          foodvalue:
              "Spicy and sour soup with shrimp, lemongrass, and kaffir lime leaves.",
          price: "120 THB"),
      Food(
          engName: "Pad Thai",
          thaName: "ผัดไทย",
          foodvalue:
              "Stir-fried rice noodles with tofu, shrimp, peanuts, and bean sprouts.",
          price: "100 THB"),
      Food(
          engName: "Green Curry Chicken",
          thaName: "แกงเขียวหวานไก่",
          foodvalue:
              "Rich and creamy green curry with chicken, Thai eggplant, and basil leaves.",
          price: "130 THB"),
      Food(
          engName: "Mango Sticky Rice",
          thaName: "ข้าวเหนียวมะม่วง",
          foodvalue:
              "Sweet sticky rice topped with ripe mango slices and drizzled with coconut milk.",
          price: "80 THB")
    ];
  }
}
