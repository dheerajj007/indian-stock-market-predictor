import 'package:flutter/material.dart';
import 'package:indian_stock_market_predictor/pages/compnayPage.dart';

class HomePage extends StatelessWidget {
  final stockList = [
    'HINDUNILVR',
    'ZEEL',
    'TATAMOTORS',
    'BPCL',
    'HDFCBANK',
    'BRITANNIA',
    'BAJAJ-AUTO',
    'TITAN',
    'KOTAKBANK',
    'BAJFINANCE',
    'TCS',
    'HEROMOTOCO',
    'VEDL',
    'POWERGRID',
    'BAJAJFINSV',
    'SBIN',
    'SHREECEM',
    'GRASIM',
    'UPL',
    'HINDALCO',
    'ADANIPORTS',
    'ONGC',
    'INDUSINDBK',
    'COALINDIA',
    'MARUTI',
    'MM',
    'ITC',
    'TECHM',
    'TATASTEEL',
    'NESTLEIND',
    'INFRATEL',
    'ULTRACEMCO',
    'JSWSTEEL',
    'INFY',
    'SUNPHARMA',
    'NTPC',
    'CIPLA',
    'HDFC',
    'GAIL',
    'DRREDDY',
    'IOC',
    'LT',
    'HCLTECH',
    'AXISBANK',
    'BHARTIARTL',
    'RELIANCE',
    'ASIANPAINT',
    'WIPRO',
    'ICICIBANK',
    'EICHERMOT'
  ];
  final stockDict = {
    'ADANIPORTS': 'Adani Ports and Special Economic Zone Ltd.',
    'ASIANPAINT': 'Asian Paints Ltd.',
    'AXISBANK': 'Axis Bank Ltd.',
    'BAJAJ-AUTO': 'Bajaj Auto Ltd.',
    'BAJAJFINSV': 'Bajaj Finserv Ltd.',
    'BAJFINANCE': 'Bajaj Finance Ltd.',
    'BHARTIARTL': 'Bharti Airtel Ltd.',
    'BPCL': 'Bharat Petroleum Corporation Ltd.',
    'BRITANNIA': 'Britannia Industries Ltd.',
    'CIPLA': 'Cipla Ltd.',
    'COALINDIA': 'Coal India Ltd.',
    'DRREDDY': "Dr. Reddy's Laboratories Ltd.",
    'EICHERMOT': 'Eicher Motors Ltd.',
    'GAIL': 'GAIL (India) Ltd.',
    'GRASIM': 'Grasim Industries Ltd.',
    'HCLTECH': 'HCL Technologies Ltd.',
    'HDFC': 'Housing Development Finance Corporation Ltd.',
    'HDFCBANK': 'HDFC Bank Ltd.',
    'HEROMOTOCO': 'Hero MotoCorp Ltd.',
    'HINDALCO': 'Hindalco Industries Ltd.',
    'HINDUNILVR': 'Hindustan Unilever Ltd.',
    'ICICIBANK': 'ICICI Bank Ltd.',
    'INDUSINDBK': 'IndusInd Bank Ltd.',
    'INFY': 'Infosys Ltd.',
    'IOC': 'Indian Oil Corporation Ltd.',
    'ITC': 'ITC Ltd.',
    'JSWSTEEL': 'JSW Steel Ltd.',
    'KOTAKBANK': 'Kotak Mahindra Bank Ltd.',
    'LT': 'Larsen & Toubro Ltd.',
    'MM': 'Mahindra & Mahindra Ltd.',
    'MARUTI': 'Maruti Suzuki India Ltd.',
    'NESTLEIND': 'Nestle India Ltd.',
    'NTPC': 'NTPC Ltd.',
    'ONGC': 'Oil & Natural Gas Corporation Ltd.',
    'POWERGRID': 'Power Grid Corporation of India Ltd.',
    'RELIANCE': 'Reliance Industries Ltd.',
    'SBIN': 'State Bank of India',
    'SHREECEM': 'Shree Cement Ltd.',
    'SUNPHARMA': 'Sun Pharmaceutical Industries Ltd.',
    'TATAMOTORS': 'Tata Motors Ltd.',
    'TATASTEEL': 'Tata Steel Ltd.',
    'TCS': 'Tata Consultancy Services Ltd.',
    'TECHM': 'Tech Mahindra Ltd.',
    'TITAN': 'Titan Company Ltd.',
    'ULTRACEMCO': 'UltraTech Cement Ltd.',
    'UPL': 'UPL Ltd.',
    'VEDL': 'Vedanta Ltd.',
    'WIPRO': 'Wipro Ltd.',
    'ZEEL': 'Zee Entertainment Enterprises Ltd.'
  };

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
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: stockList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.add),
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
      ),
    );
  }
}
