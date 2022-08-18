// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:http/http.dart' as http;
//
// import 'Market/Constant/Constant.dart';
// import 'Market/Model/Coin.dart';
//
//
// Future<List<Coin>> getAllCoins() async {
//   // String url = 'http://node.dadaex.io/list-crypto/get';
//   String url = 'http://node.coinxhub.com/list-crypto/get';
//
//   List<Coin> coinsList = [];
//
//   try {
//     var response = await http.get(Uri.parse(url));
//     var data = json.decode(response.body);
//     if(data['status_code'].toString() == '1') {
//       ConstantClass.allCoinList.clear();
//       ConstantClass.currencyList.clear();
//       ConstantClass.tickerList.clear();
//
//       for(var i=0; i<data['data'].keys.length; i++) {
//         ConstantClass.currencyList.add(data['data'].keys.elementAt(i).toString());
//         for(var j=0; j<data['data'][data['data'].keys.elementAt(i).toString()].length; j++) {
//
//           coinsList.add(Coin(
//             coinID: data['data'][data['data'].keys.elementAt(i).toString()][j]['id'].toString(),
//             coinImage: data['data'][data['data'].keys.elementAt(i).toString()][j]['image'].toString(),
//             coinName: data['data'][data['data'].keys.elementAt(i).toString()][j]['name'].toString(),
//             coinShortName: data['data'][data['data'].keys.elementAt(i).toString()][j]['currency'].toString(),
//             coinPrice: data['data'][data['data'].keys.elementAt(i).toString()][j]['price'].toString(),
//             coinLastPrice: data['data'][data['data'].keys.elementAt(i).toString()][j]['price'].toString(),
//             coinPercentage: data['data'][data['data'].keys.elementAt(i).toString()][j]['change'].toString(),
//             coinSymbol: data['data'][data['data'].keys.elementAt(i).toString()][j]['symbol'].toString(),
//             coinPairWith: data['data'][data['data'].keys.elementAt(i).toString()][j]['pair_with'].toString(),
//             coinHighDay: data['data'][data['data'].keys.elementAt(i).toString()][j]['high'].toString(),
//             coinLowDay: data['data'][data['data'].keys.elementAt(i).toString()][j]['low'].toString(),
//             coinDecimalPair: data['data'][data['data'].keys.elementAt(i).toString()][j]['decimal_pair'].toString(),
//             coinDecimalCurrency: data['data'][data['data'].keys.elementAt(i).toString()][j]['decimal_currency'].toString(),
//             coinListed: data['data'][data['data'].keys.elementAt(i).toString()][j]['listed'] as bool,
//           ));
//         }
//       }
//
//       // ConstantClass.currencyList.insert(0, 'Wishlist');
//       // ConstantClass.currencyList.insert(ConstantClass.currencyList.length + 1, 'P2P');
//
//       for(var i=0; i<data['tickers'].length; i++) {
//         ConstantClass.tickerList.add(data['tickers'].elementAt(i).toString().toLowerCase() + "@ticker");
//       }
//       for(var i=0; i<data['listed_tickers'].length; i++) {
//         ConstantClass.listedTickerList.add(data['listed_tickers'].elementAt(i).toString().toLowerCase() + "@kline");
//       }
//
//       return coinsList;
//
//     }
//     else {
//       Fluttertoast.showToast(msg: 'Something went wrong!!', textColor: Colors.white, backgroundColor: Colors.red);
//       return coinsList;
//     }
//   }
//   catch (e) {
//     Fluttertoast.showToast(msg: e.toString(), textColor: Colors.white, backgroundColor: Colors.red);
//     ConstantClass.allCoinList = [];
//     ConstantClass.currencyList = [];
//     return coinsList;
//   }
// }