import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class DonateBottom extends StatefulWidget {
  @override
  _DonateBottomState createState() => _DonateBottomState();
}

class _DonateBottomState extends State<DonateBottom> {

  Future<http.Response> fetchPost() {
  return http.post('https://jsonplaceholder.typicode.com/posts/donate',);
}

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
