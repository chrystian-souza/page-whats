import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _contatos = [];

  // @override
  // void initState() {
  //   super.initState();
  //   carregarArquivoJson();
  // }

  // Future<void> carregarArquivoJson() async {
  //   try {
  //     String jsonString = await rootBundle.loadString('assets/data/users.json');
  //     List<dynamic> users = json.decode(jsonString)['users'];
  //     setState(() {
  //       _users = users;
  //     });
  //   } catch (error) {
  //     print('Erro ao carregar o arquivo JSON: $error');
  //   }
  // }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('WhatsApp'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("CHAT"),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("STATUS"),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("CALLS"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: _contatos.length,
        itemBuilder: (context, index) {
          final contato = _contatos[index];
          return ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.person),
            ),
            title: Text(contato['nome']),
            subtitle: Text(contato['mensagem']),
            onTap: () {
              // Faça algo quando o contato for selecionado
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.messenger),
        backgroundColor: Colors.green,
      ),
    );
  }
}
