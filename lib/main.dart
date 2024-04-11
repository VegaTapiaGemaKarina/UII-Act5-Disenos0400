import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Material App",
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xfff49fd5),
            title: Text("Bottom Sheet  0400"),
          ),
          body: const ShowSheet()),
    );
  }
}

class ShowSheet extends StatelessWidget {
  const ShowSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      ListTile(
        leading: const Icon(
          Icons.android_outlined,
          size: 40.0,
          color: Colors.green,
        ),
        title: const Text("Mas informacion"),
        subtitle: const Text("Click para ver mas"),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Color(0xfff993cf),
        ),
        onTap: () {
          _mySheet(context);
        },
      )
    ]);
  }

  _mySheet(BuildContext context) {
    List myList = List.generate(50, (i) => i);

    showModalBottomSheet(
      barrierColor: Colors.black54,
      //backgroundColor: Color(0xfffd86d1),
      isDismissible: true, //para bloquear el tap fuera
      isScrollControlled: true, // colocar el tamaño
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(32))),
      context: context,
      builder: (context) {
        return SizedBox(
          height: 500.0,
          child: ListView.builder(
            itemCount: myList.length,
            itemBuilder: (_, i) => ListTile(
              title: Text(myList[i].toString()),
            ),
          ),
        );
      },
    );
  }
}
