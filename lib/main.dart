// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "calcutor",
      theme: ThemeData(primarySwatch: Colors.purple),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int? firstnum;
  int? secondnum;
  String texttodisplay = "";
  String? res;
  String? operatorperform;
  void? btnclicked(String btnval) {
    if (btnval == "c") {
      texttodisplay = "";
      firstnum = 0;
      secondnum = 0;
      res = "";
    } else if (btnval == "+" ||
        btnval == "-" ||
        btnval == "x" ||
        btnval == "/") {
      firstnum = int.parse(texttodisplay);
      res = "";
      operatorperform = btnval;
    } else if (btnval == "=") {
      secondnum = int.parse(texttodisplay);
      if (operatorperform == "+") {
        res = (firstnum + secondnum).toString();
      }
      if (operatorperform == "-") {
        res = (firstnum - secondnum).toString();
      }
      if (operatorperform == "x") {
        res = (firstnum * secondnum).toString();
      }
      if (operatorperform == "/") {
        res = (firstnum / secondnum).toString();
      } else {
        res = int.parse(texttodisplay + btnval).toString();
      }
      setState(() {
        texttodisplay = res;
      });
    }
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("calcutor")),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  "Output",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () => {},
                        child: Text( 
                          "$texttodisplay 9",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay 8",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay 7",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay +",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay 6",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay 5",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay 4",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay -",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay 3",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay 2",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay 1",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay *",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay c",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay 0",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay =",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                    Expanded(
                      child: MaterialButton(
                        padding: EdgeInsets.all(25.0),
                        onPressed: () {},
                        child: Text(
                          "$texttodisplay /",
                          style: TextStyle(fontSize: 25.0),
                        ),
                      ),
                    ),
                  ],
              
            ),
          ],
        ),
      ),
    );
  }
}
