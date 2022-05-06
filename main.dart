import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: my_application(),
  ));
}

class my_application extends StatefulWidget {
  @override
  _State createState() => _State();

}

class _State extends State<my_application> {
  final List<String> names = <String>['THARUN S', 'KISHORE', 'PRADEEPA', 'AKALYAA', 'KARTHI', 'VIKKY', 'SINDHU', 'ARUN'];
  final List<int> msgCount = <int>[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter ListView - Data Displaying'),
        ),
        body: Column(
            children: <Widget>[
              Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: names.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          margin: EdgeInsets.all(2),
                          color: msgCount[index]>=10? Colors.blue[400]:
                          msgCount[index]>3? Colors.blue[100]: Colors.grey,
                          child: Center(
                              child: Text('${names[index]} (${msgCount[index]})',
                                style: TextStyle(fontSize: 18),
                              )
                          ),
                        );
                      }
                  )
              )
            ]
        )
    );
  }
}