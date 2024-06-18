import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Tasks'),
          ),
          body: ListView(          //listView faz o papel de scrollar
            // scrollDirection: Axis.horizontal,
            children: [
              Task('praticar flutterflutterflutterflutter'),
              Task('andar de bike'),
              Task('estudar flutter'),
              Task('praticar flutter'),
              Task('andar ao ar livre'),
              Task('praticar esportesr'),
              Task('assistir'),
              Task('ver regra de 3'),
              Task('participar de eventos'),
            ],
          ),
          floatingActionButton: FloatingActionButton(onPressed: () {}),
        ));
  }
}
class Task extends StatelessWidget {
  final String nome;
  const Task(this.nome,{super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: 140,
            ),
            Column(
              children: [
                Container(
                  color: Colors.white,
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        color: Colors.black26,
                        width: 72,
                        height: 100,
                      ),
                      Container(width:200, child: Text(nome,style: TextStyle(fontSize: 24,overflow: TextOverflow.ellipsis),)),
                      ElevatedButton(
                          onPressed: () {}, child: Icon(Icons.arrow_drop_up))
                    ],
                  ),
                ),
                Text('nivel 0',style: TextStyle(color: Colors.white,fontSize: 16),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
