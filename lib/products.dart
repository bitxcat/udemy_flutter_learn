import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  Products(this.products); // 传入的参数赋值给实例变量.

  @override
  Widget build(BuildContext context) {
    return Column(
      children: products
          .map(
            (element) => Card(
                  child: Column(
                    children: <Widget>[
                      Image.asset('assets/food.jpg'),
                      Text(element),
                    ],
                  ),
                ),
          )
          .toList(),
    );
  }
}
