import 'package:flutter/material.dart';
import 'package:second_app/data/data.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Onboarding",
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<SliderModel> slides = new List<SliderModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides = getSlides();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(itemBuilder: null),
    );
  }
}

class SliderTile extends StatelessWidget {
  const SliderTile({Key? key}) : super(key: key);

  String imageAssetPath, title, desc;
  SliderTile({this.imageAssetPath, this.title, this.desc}):

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.asset(imageAssetPath),
          SizedBox(height: 20,),
          Text(title),
          SizedBox(height: 12,),
          Text(desc)
        ],
      ),
    );
  }
}
