import 'package:estudando_mobile/components/task.dart';
import 'package:estudando_mobile/screens/form_screen.dart';
import 'package:flutter/material.dart';

class InitalScreen extends StatefulWidget {
  const InitalScreen({Key? key}) : super(key: key);

  @override
  State<InitalScreen> createState() => _InitalScreenState();
}

class _InitalScreenState extends State<InitalScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        children: const [
          Task(
            'Aprender Flutter',
            'assets/images/flutterzin.png',
            3,
          ),
          Task(
            'Andar de bike',
            'assets/images/bike.jpg',
            1,
          ),
          Task(
            'Meditar',
            'assets/images/meditar.png',
            4,
          ),
          Task(
            'Cozinhar',
            'assets/images/comida.png',
            2,
          ),
          Task(
            'League Of Legends',
            'assets/images/lol.png',
            5,
          ),
          Task(
            'NodeJS',
            'assets/images/node.webp',
            5,
          ),
          SizedBox(
            height: 80,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
