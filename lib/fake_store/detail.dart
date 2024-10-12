// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DetailScreen extends StatelessWidget {
  final int data;

  // Constructor to accept data
  DetailScreen({required this.data});

  // Simulate fetching data from an API or database after navigation
  Future<String> fetchData() async {
    await Future.delayed(
        Duration(seconds: 5)); // Simulating a network call delay
    return 'Fetched Data: Details loaded after 5 seconds!';
  }
  Future<Map> _getProductDetail() async {
    var url = Uri.parse("https://fakestoreapi.com/products/${this.data}");
    var respone = await http.get(url);
    final data = jsonDecode(respone.body);
    return data;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Screen'),
      ),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<Map>(
              // future: fetchData(), // Fetch the data asynchronously
              future: _getProductDetail(), // Fetch the data asynchronously
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                      strokeWidth: 5,
                    ),
                  ); // Loading spinner
                }
                else if (snapshot.hasError) {
                  return Center(
                      child: Text('Error: ${snapshot.error}')); // Error handling
                } else {
                  return Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(15), //DecorationImage
                    ),
                    child: Column(
                      children: [
                        Image.network("${snapshot.data!['image']}", width: 200,),
                        Text("${snapshot.data!['title']}")
                      ],
                    ),
                  ); // Display fetched data
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
