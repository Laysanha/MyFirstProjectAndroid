import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:my_first_project/new-notes/new-notes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      backgroundColor: const Color.fromRGBO(243, 244, 245, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const SizedBox(
          height: 140,
          child: Padding(
            padding: EdgeInsets.fromLTRB(8,40,8,28),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Notes',
                    style: TextStyle(fontSize: 30, color: Colors.black87),
                  ),
                  Text(
                  '3', style: TextStyle(fontSize: 34, color: Colors.black87),
                ),
              ],
            ),
          ),
        )
      ),
      body: const Padding(
        padding: EdgeInsets.fromLTRB(20,20,20,0),
        child: FormSearch(),
      ),
      // floatingActionButton: FloatingActionButton(onPressed: () {  },),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(111, 111, 200, 100),
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute<void>(
                builder: (BuildContext context) => const NewNotes()
              )
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class FormSearch extends StatefulWidget {
  const FormSearch({super.key});

  @override
  State<FormSearch> createState() => _FormSearchState();
}

class _FormSearchState extends State<FormSearch> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            style: const TextStyle(fontSize: 18, color: Colors.black87),
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.symmetric(vertical: 12),
              hintText: 'Pesquisar...',
              hintStyle: const TextStyle(color: Colors.black12),
              prefixIcon: const Icon(Icons.search, color: Colors.grey,),
              // fillColor: Colors.grey.shade200.withOpacity(1.0),
                fillColor: const Color.fromRGBO(231, 229, 234, 1),
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(color: Colors.transparent)
              ),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.transparent)
              )
            ),
          ),
          Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView(
                  children: [
                    Card(
                      color: Colors.grey.shade200,
                      child: ListTile(
                        title: RichText(
                          text: const TextSpan(
                              text: 'Text Here! \n',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                height: 1.5,
                              ),

                            children: [
                              TextSpan(
                                text: 'Content here! Nome grande Socorro I need Help AHHHHHHHHHH',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  height: 1.5,
                                )
                              )
                            ]
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Text(
                            'Editado: ${DateFormat('dd/MM/yyyy HH:mm').format(DateTime.now())}',
                            style: const TextStyle(
                              fontSize: 14,
                              color: Color.fromRGBO(87, 87, 170, 1),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
          ),

        ],
      ),
    );
  }
}
