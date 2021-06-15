import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:indian_stock_market_predictor/constants.dart';
import 'package:indian_stock_market_predictor/pages/compnayPage.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final following = Constants.followingl;
  final stockList = Constants.stockl;
  final stockDict = Constants.stockd;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Markets',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "Following",
                  ),
                ),
              ),
              if (following.length != 0)
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: stockList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: CircleAvatar(
                        radius: 30.0,
                        backgroundColor: Colors.white,
                        backgroundImage: CachedNetworkImageProvider(
                          "https://raw.githubusercontent.com/fixxtion/indian-stock-market-predictor/main/model_data/logos/${stockList[index]}.png",
                        ),
                      ),
                      title: Text('${stockDict[stockList[index]]}'),
                      subtitle: Text('${stockList[index]}'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CompanyPage(
                                name: '${stockDict[stockList[index]]}',
                                symbol: stockList[index]),
                          ),
                        );
                      },
                    );
                  },
                ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    "All",
                  ),
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: stockList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 30.0,
                      backgroundColor: Colors.white,
                      backgroundImage: CachedNetworkImageProvider(
                        "https://raw.githubusercontent.com/fixxtion/indian-stock-market-predictor/main/model_data/logos/${stockList[index]}.png",
                      ),
                    ),
                    title: Text('${stockDict[stockList[index]]}'),
                    subtitle: Text('${stockList[index]}'),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CompanyPage(
                              name: '${stockDict[stockList[index]]}',
                              symbol: stockList[index]),
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
