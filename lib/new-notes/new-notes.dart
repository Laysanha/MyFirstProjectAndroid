import 'package:flutter/material.dart';
import 'package:my_first_project/tela-de-inicio/home_screem.dart';

class NewNotes extends StatefulWidget {
  const NewNotes({super.key});

  @override
  State<NewNotes> createState() => _NewNotesState();
}

class _NewNotesState extends State<NewNotes> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(243, 244, 245, 1),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(8, 40, 8, 28),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  // icon: const Icon(Icons.arrow_back_ios),
                  icon: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(111, 111, 200, 100),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                      size: 20,
                  ),
                ))
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(111, 111, 200, 100),
        foregroundColor: Colors.white,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute<void>(
              builder: (BuildContext context) => const HomeScreen()
          )
          );
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}

// class BackHome extends StatefulWidget {
//   const BackHome({super.key});
//
//   @override
//   State<BackHome> createState() => _BackHomeState();
// }
//
// class _BackHomeState extends State<BackHome> {
//   @override
//   Widget build(BuildContext context) {
//     return const IconButton(
//       icon: Icon(Icons.arrow_back_ios),
//       onPressed: () { Navigator.of(context).pop() },
//     );
//   }
// }
