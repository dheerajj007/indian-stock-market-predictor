import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:indian_stock_market_predictor/constants.dart';

class CompanyPage extends StatefulWidget {
  final String symbol;
  final String name;
  final bool follow;

  const CompanyPage(
      {Key? key, this.symbol = "", this.name = "", this.follow = false})
      : super(key: key);

  @override
  _CompanyPageState createState() => _CompanyPageState();
}

class _CompanyPageState extends State<CompanyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.cancel_outlined,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.stars,
                color: Colors.black,
              ),
              onPressed: () {
                widget.follow
                    ? Constants.followingl.add(widget.symbol)
                    : Constants.followingl.add(widget.symbol);
              }),
        ],
        title: Text("Analysis & Predictions",
            style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: InteractiveViewer(
          child: Column(
            children: [
              SizedBox(
                height: 22,
              ),
              Text(
                "Yearly & Weekly Trend chart",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              CachedNetworkImage(
                  imageUrl:
                      "https://raw.githubusercontent.com/fixxtion/indian-stock-market-predictor/main/model_data/predicted_graphs/${widget.symbol}2.png",
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                          value: downloadProgress.progress)),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "*Yearly Trends",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "**Monthly Trends",
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    "***Weekly Trends",
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Chart trying to predict the next year Stock Prices of",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              CachedNetworkImage(
                  imageUrl:
                      "https://raw.githubusercontent.com/fixxtion/indian-stock-market-predictor/main/model_data/predicted_graphs/${widget.symbol}1.png",
                  progressIndicatorBuilder: (context, url, downloadProgress) =>
                      CircularProgressIndicator(
                          value: downloadProgress.progress)),
              SizedBox(
                height: 30,
              ),
              Text("Zoom in to read the graph easily."),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
