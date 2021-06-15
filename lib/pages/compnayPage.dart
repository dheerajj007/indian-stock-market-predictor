import 'package:flutter/material.dart';

class CompanyPage extends StatelessWidget {
  final String symbol;
  final String name;

  const CompanyPage({
    Key? key,
    this.symbol = "",
    this.name = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        title: Text(name, style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: InteractiveViewer(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Image.network(
                  "https://raw.githubusercontent.com/fixxtion/indian-stock-market-predictor/main/predicted_graphs/${symbol}1.png"),
              SizedBox(
                height: 30,
              ),
              Image.network(
                  "https://raw.githubusercontent.com/fixxtion/indian-stock-market-predictor/main/predicted_graphs/${symbol}2.png"),
              SizedBox(
                height: 30,
              ),
              Image.network(
                  "https://raw.githubusercontent.com/fixxtion/indian-stock-market-predictor/main/predicted_graphs/${symbol}3.png"),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
