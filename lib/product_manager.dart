import 'package:flutter/material.dart';
import './products.dart';

// 将 main.dart.中的代码分解到单个文件中,每个 widget 对应一个文件.

class ProductManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  List<String> _products = ['Food Tester'];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10.0),
          child: RaisedButton(
            onPressed: () {
              setState(() {
                _products.add('Advanced Food Tester');
              });
            },
            child: Text('Add Product'),
          ),
        ),
        /// 里面的 widget 也是定制的, 另一个文件. 注意这里的参数传递.
        Products(_products),
      ],
    );
  }
}
