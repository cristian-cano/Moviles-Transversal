import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Post {
  final int id;
  final String title;

  Post({required this.id, required this.title});
  factory Post.fromJson(Map<String, dynamic> json) =>
      Post(id: json['id'], title: json['title']);
}

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final String nombre = 'Cristian Camilo Melo Cano';
  final String ficha = '2925960';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Taller ADSO',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      home: HomePage(nombre: nombre, ficha: ficha),
    );
  }
}

class HomePage extends StatefulWidget {
  final String nombre;
  final String ficha;

  const HomePage({super.key, required this.nombre, required this.ficha});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<Widget> get _pages => [
        const Punto1(),
        Punto2(nombre: widget.nombre),
        Punto3(nombre: widget.nombre),
        Punto4(nombre: widget.nombre),
        Punto5(nombre: widget.nombre),
        Punto6(nombre: widget.nombre, ficha: widget.ficha),
        Punto7(),
        Punto8(),
        Punto9(),
        Punto10(),
        const Punto11(),
        const Punto12(),
      ];

  List<String> get _titles => [
        "Punto 1",
        "Punto 2",
        "Punto 3",
        "Punto 4",
        "Punto 5",
        "Punto 6",
        "Punto 7",
        "Punto 8",
        "Punto 9",
        "Punto 10",
        "Punto 11",
        "Punto 12",
      ];

  void _selectPage(int index) {
    setState(() => _selectedIndex = index);
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_titles[_selectedIndex])),
      drawer: Drawer(
        child: ListView.builder(
          itemCount: _titles.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(_titles[index]),
            onTap: () => _selectPage(index),
          ),
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}

class Punto1 extends StatelessWidget {
  const Punto1({super.key});
  @override
  Widget build(BuildContext context) => const Center(
        child: Text('¡Hola mundo!', style: TextStyle(fontSize: 24)),
      );
}

class Punto2 extends StatelessWidget {
  final String nombre;
  const Punto2({super.key, required this.nombre});
  @override
  Widget build(BuildContext context) => Center(
        child: Text(nombre, style: const TextStyle(fontSize: 20)),
      );
}

class Punto3 extends StatelessWidget {
  final String nombre;
  const Punto3({super.key, required this.nombre});
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Aprendiz $nombre', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 10),
            const Icon(Icons.school, size: 50, color: Colors.indigo),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text('Crear')),
            ElevatedButton(onPressed: () {}, child: const Text('Editar')),
            ElevatedButton(onPressed: () {}, child: const Text('Enviar')),
          ],
        ),
      );
}

class Punto4 extends StatelessWidget {
  final String nombre;
  const Punto4({super.key, required this.nombre});
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.indigo.shade50,
        body: Center(
          child: Card(
            margin: const EdgeInsets.all(20),
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('DATOS PERSONALES',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  Text('Aprendiz $nombre'),
                  const SizedBox(height: 10),
                  ElevatedButton(onPressed: () {}, child: const Text('Crear')),
                  ElevatedButton(onPressed: () {}, child: const Text('Editar')),
                  ElevatedButton(onPressed: () {}, child: const Text('Enviar')),
                ],
              ),
            ),
          ),
        ),
      );
}

class Punto5 extends StatelessWidget {
  final String nombre;
  const Punto5({super.key, required this.nombre});
  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Image.network('https://via.placeholder.com/150'),
            ListTile(leading: const Icon(Icons.person), title: Text(nombre)),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('3133815761'),
            ),
          ],
        ),
      );
}

class Punto6 extends StatelessWidget {
  final String nombre;
  final String ficha;
  const Punto6({super.key, required this.nombre, required this.ficha});
  @override
  Widget build(BuildContext context) => Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Text('FICHA | $ficha\nAprendiz: $nombre'),
          ),
        ),
      );
}

class Punto7 extends StatelessWidget {
  final List<String> aprendices = [
    'Cristian Camilo Melo Cano',
    'Mariana Rivera',
    'Sebastián Franco',
    'Tatiana Vélez'
  ];
  Punto7({super.key});
  @override
  Widget build(BuildContext context) => ListView.builder(
        itemCount: aprendices.length,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.person),
          title: Text(aprendices[index]),
        ),
      );
}

class Punto8 extends StatelessWidget {
  final List<Map<String, dynamic>> aprendices = [
    {'nombre': 'Cristian Camilo Melo Cano', 'telefono': '3133815761'},
    {'nombre': 'Lucía Jiménez', 'telefono': '397456556'},
  ];
  Punto8({super.key});
  @override
  Widget build(BuildContext context) => ListView(
        children: aprendices
            .map((a) => ListTile(
                  leading: const Icon(Icons.contact_phone),
                  title: Text(a['nombre']),
                  subtitle: Text('Tel: ${a['telefono']}'),
                ))
            .toList(),
      );
}

class Punto9 extends StatelessWidget {
  final List<Map<String, dynamic>> aprendices = [
    {
      'nombre': 'Cristian Camilo Melo Cano',
      'telefono': '3133815761',
      'foto': 'https://via.placeholder.com/150',
      'color': Colors.teal
    },
  ];
  Punto9({super.key});
  @override
  Widget build(BuildContext context) => ListView(
        children: aprendices
            .map((a) => ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(a['foto']),
                    backgroundColor: a['color'],
                  ),
                  title: Text(a['nombre']),
                  subtitle: Text(a['telefono']),
                  onTap: () => showModalBottomSheet(
                    context: context,
                    builder: (_) => Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text('Detalles de ${a['nombre']}'),
                    ),
                  ),
                ))
            .toList(),
      );
}

class Punto10 extends StatelessWidget {
  final nombreController = TextEditingController();
  final telefonoController = TextEditingController();
  Punto10({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => showModalBottomSheet(
            context: context,
            builder: (_) => Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  TextFormField(
                    controller: nombreController,
                    decoration: const InputDecoration(labelText: 'Nombre'),
                  ),
                  TextFormField(
                    controller: telefonoController,
                    decoration: const InputDecoration(labelText: 'Teléfono'),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}

class Punto11 extends StatefulWidget {
  const Punto11({super.key});
  @override
  State<Punto11> createState() => _Punto11State();
}

class _Punto11State extends State<Punto11> {
  List<Post> posts = [];
  @override
  void initState() {
    super.initState();
    cargarPosts();
  }

  Future<void> cargarPosts() async {
    final res = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (res.statusCode == 200) {
      final List datos = json.decode(res.body);
      setState(() => posts = datos.map((e) => Post.fromJson(e)).take(10).toList());
    }
  }

  @override
  Widget build(BuildContext context) => posts.isEmpty
      ? const Center(child: CircularProgressIndicator())
      : ListView(
          children: posts
              .map((p) => ListTile(
                    title: Text(p.title),
                    leading: const Icon(Icons.description),
                  ))
              .toList(),
        );
}

class Punto12 extends StatefulWidget {
  const Punto12({super.key});
  @override
  State<Punto12> createState() => _Punto12State();
}

class _Punto12State extends State<Punto12> {
  List<dynamic> aprendices = [];
  @override
  void initState() {
    super.initState();
    fetchAprendices();
  }

  Future<void> fetchAprendices() async {
    final response = await http.get(Uri.parse('http://localhost:3000/aprendices'));
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      setState(() => aprendices = data);
    }
  }

  @override
  Widget build(BuildContext context) => aprendices.isEmpty
      ? const Center(child: CircularProgressIndicator())
      : ListView.builder(
          itemCount: aprendices.length,
          itemBuilder: (context, index) {
            final aprendiz = aprendices[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(aprendiz['foto'] ?? 'https://via.placeholder.com/150'),
              ),
              title: Text(aprendiz['nombre']),
              subtitle: Text('Teléfono: ${aprendiz['telefono']}'),
            );
         },
);