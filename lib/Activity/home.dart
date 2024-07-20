import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void getData() async{
    Response response = await get("https://api.restful-api.dev/objects" as Uri);
    print(response.body);
  }

  int counter = 1;
  @override
  void initState() {
    super.initState();
    getData();
  }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Activity"),
      ),
      body:
          Column(
            children: <Widget>[
              FloatingActionButton(
                onPressed: () => setState(() {
                  counter +=1;
                }),
              ),
              Text("$counter"),
            ],
          )
    );
  }
}
