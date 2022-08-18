import 'package:flutter/material.dart';
import 'package:market_package/Market/Model/Coin.dart';
import 'package:market_package/Market/Screens/allCoinScreen.dart';
import 'package:market_package/Market/Screens/coinGraphScreen.dart';
import 'package:market_package/Market/Screens/coinOrderBookScreen.dart';
import 'package:market_package/Market/Screens/coinOrderVolumeScreen.dart';
import 'package:market_package/Market/Screens/coinTradeHistoryScreen.dart';
import 'package:market_package/Market/Screens/searchScreen.dart';
import 'package:market_package/market_package.dart';


import 'coinsList.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(

          // child: Market(
          //   coinsList: coinsList,
          //   currencyList: currencyList,
          //   tickerList: tickerLists,
          //   // showWishlistAtFirst: true,
          //   // currencyTabSelectedItemColor: Colors.red,
          //   // currencyTabBackgroundColor: Colors.transparent,
          //   // currencyTabHeight: 100,
          //   // showHeading: true,
          // ),

          // child: CoinTradeHistoryScreen(
          //   coinData: coinsList.elementAt(2),
          //   // listedCoinTradeHistoryAPIUrl: 'https://app.nodeadscoin.com/orders/trade-book?currency=ADS&with_currency=USDT',
          //   listedCoinTradeHistoryAPIUrl: 'http://node.coinxhub.com/orders/trade-book?currency=TST&with_currency=USDT',
          //   itemCount: 15,
          //   inrRate: 77,
          // ),


          // child: CoinOrderVolumeScreen(
          //   coinData: coinsList.elementAt(2),
          //   // listedCoinOrderBookUrl: 'https://server.justbit.co.in/orders/order-book?currency=RPT&with_currency=INR',
          //   // listedCoinOrderBookUrl: 'https://app.nodeadscoin.com/orders/order-book?currency=ADS&with_currency=USDT',
          //   listedCoinOrderBookUrl: 'http://node.coinxhub.com/orders/order-book?currency=TST&with_currency=USDT',
          //   // itemCount: 15,
          //   // inrRate: 77,
          // ),

          // child: CoinOrderBookScreen(
          //   coinData: coinsList.elementAt(2),
          //   // listedCoinOrderBookUrl: 'https://server.justbit.co.in/orders/order-book?currency=RPT&with_currency=INR',
          //   // listedCoinOrderBookUrl: 'https://app.nodeadscoin.com/orders/order-book?currency=ADS&with_currency=USDT',
          //   listedCoinOrderBookUrl: 'http://node.coinxhub.com/orders/order-book?currency=TST&with_currency=USDT',
          //   // itemCount: 15,
          //   // inrRate: 77,
          // ),

          child: SafeArea(
            child: Container(
              // height: MediaQuery.of(context).size.height,
              // padding: EdgeInsets.only(top: 20),
              child: ThirdScreen(),
            ),



            // child: AllCoinScreen(
            //   coinsList: coinsList,
            //   currencyList: currencyList,
            //   tickerList: tickerLists,
            //   showWishlistAtFirst: false,
            //   currencyTabSelectedItemColor: Colors.red,
            //   currencyTabBackgroundColor: Colors.transparent,
            //   currencyTabHeight: 100,
            //   showHeading: true,
            //   inrRate: 77.0,
            //   onCoinTap: (ctx, coin) {
            //     Navigator.push(ctx, MaterialPageRoute(builder: (ctx) => SecondScreen(coin: coin)));
            //   },
            // ),


            // child: SearchScreen(
            //   coinsList: coinsList,
            //   currencyList: currencyList,
            //   tickerList: tickerLists,
            //   inrRate: 77.0,
            // ),

          ),

        ),
      ),
    );
  }
}

// class Market extends StatefulWidget {
//
//   List<Coin> coinsList;
//   List<String> currencyList;
//   List<String> tickerList;
//
//   BoxDecoration? currencyTabBackgroundDecoration;
//   Color? currencyTabBackgroundColor;
//   Color? currencyTabItemColor;
//   Color? currencyTabSelectedItemColor;
//
//
//
//   Market({
//     Key? key,
//     required this.coinsList,
//     required this.currencyList,
//     required this.tickerList,
//   }) : super(key: key);
//
//   @override
//   State<Market> createState() => _MarketState();
// }
//
// class _MarketState extends State<Market> {
//
//   @override
//   void initState() {
//     // ConstantClass.allCoinList = widget.coinsList;
//     // ConstantClass.currencyList = widget.currencyList;
//     // ConstantClass.tickerList = widget.tickerList;
//     // CoinController.to.getCoins(widget.coinsList);
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(child: Market(
//       tickerList: tickerLists,
//       coinsList: coinsList,
//       currencyList: currencyList,
//       // currencyTabFontSize: 13,
//       // headingTextStyle: TextStyle(color: Colors.yellow, fontSize: 14, fontWeight: FontWeight.w600),
//       // showHeading: true,
//       // currencyTabBackgroundColor: Colors.transparent,
//       // currencyTabSelectedItemColor: Colors.green,
//       // currencyTabItemBorderRadius: BorderRadius.circular(10),
//     ));
//   }
// }


class SecondScreen extends StatefulWidget {

  Coin coin;
  SecondScreen({Key? key, required this.coin}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // CoinOrderBookScreen(
      //   coinData: widget.coin,
      //   // listedCoinOrderBookUrl: 'https://server.justbit.co.in/orders/order-book?currency=RPT&with_currency=INR',
      //   // listedCoinOrderBookUrl: 'https://app.nodeadscoin.com/orders/order-book?currency=ADS&with_currency=USDT',
      //   listedCoinOrderBookUrl: 'http://node.coinxhub.com/orders/order-book?currency=TST&with_currency=USDT',
      //   inrRate: 77.0,
      //   // itemCount: 15,
      //   // inrRate: 77,
      // ),

      SearchScreen(
        coinsList: coinsList,
        currencyList: currencyList,
        tickerList: tickerLists,
        inrRate: 77.0,
      ),

    );
  }
}



class ThirdScreen extends StatefulWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: Container(
        // height: MediaQuery.of(context).size.height,
        child: CoinGraphScreen(
          coinData: coinsList.elementAt(0),
          listedCoinGraphUrl: 'http://node.coinxhub.com/orders/getohlc?symbol=TSTUSDT&interval=1m',
          inrRate: 77.0,
          chartHeight: MediaQuery.of(context).size.height * 0.5,
        ),
      ),
    );
  }
}

