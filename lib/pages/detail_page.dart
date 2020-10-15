import 'package:flutter/material.dart';
import 'package:nike_ecommerce/core/flutter_icons.dart';
import 'package:nike_ecommerce/models/shoe_model.dart';
import 'package:nike_ecommerce/widgets/app_clipper.dart';

class DetailPage extends StatefulWidget {
  final ShoeModel shoeModel;
  DetailPage(this.shoeModel);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.shoeModel.color,
      appBar: AppBar(
        backgroundColor: widget.shoeModel.color,
        elevation: 0,
        title: Text("CATEGORIES"),
        leading: Icon(FlutterIcons.left_open_1),
      ),
      body: Stack(
        children: <Widget>[
          ClipPath(
            clipper: AppClipper(cornerSize: 50, diagonalHeight: 200),
            child: Container(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
