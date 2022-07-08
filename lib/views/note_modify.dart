import 'package:flutter/material.dart';

class NoteModify extends StatelessWidget {
  const NoteModify({Key? key, this.noteID}) : super(key: key);

  final String? noteID;
  bool get isEditing => noteID != null;

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(title: Text(isEditing ? 'Edit note' : 'Create note')),
    body: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
          children: [
            const TextField(
              decoration: InputDecoration(
                hintText: 'Note title'
              ),
            ),
            Container(height: 8,),
            const TextField(
              decoration: InputDecoration(
                hintText: 'Note content'
              ),
            ),

            Container(height: 16,),
            SizedBox(
              width: double.infinity,
              height: 35,
              child: ElevatedButton(
              onPressed: (){
                if(isEditing) {

                }else{
                  
                }
                Navigator.of(context).pop();
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
              ),
              child: const Text('Submit', style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        ),
    ),
   );
  }
}