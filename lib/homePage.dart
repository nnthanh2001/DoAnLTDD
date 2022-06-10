import 'dart:io';


import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Image.asset(
              "asset/image/logo-caothang.png",
              width: 50.0,
              height: 50.0,
            ),
            const Text(
              "Trường Cao đẳng Kỹ thuật CAO THẮNG",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ],
        ),
      ),
      body: Text("1"),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.blue,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 20,
        unselectedFontSize: 13,
        items: [
          BottomNavigationBarItem(
            label: "Trang chủ",
            icon: Image.asset(
              "asset/image/trang-chu.png",
              height: 30,
            ),
          ),
          
          BottomNavigationBarItem(
              label: "Thông báo",
              icon: Image.asset("asset/image/thong-bao.png", height: 30)),
          BottomNavigationBarItem(
              label: "Cá nhân",
              icon: Image.asset("asset/image/user.png", height: 30)),
          BottomNavigationBarItem(
              label: "Cài đặt",
              icon: Image.asset("asset/image/cai-dat.png", height: 30)),
              
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}