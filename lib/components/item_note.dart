import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/note.dart';
import 'package:flutter_application_1/pages/note_page.dart';

class ItemNote extends StatelessWidget {
  const ItemNote({super.key, required this.notes});
  final Note notes;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NotePage(note: notes),
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(205, 255, 255, 255),
            borderRadius: BorderRadius.circular(5.0),
            border: Border.all(
              color: const Color.fromARGB(115, 255, 255, 255),
              width: 4.0,
            ),
          ),
          width: double.infinity,
          constraints: const BoxConstraints(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    notes.title,
                    style: const TextStyle(fontSize: 34, color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                ),
                Text(
                  notes.description,
                  style: const TextStyle(fontSize: 20, color: Color.fromARGB(255, 0, 0, 0)),
                ),
                const SizedBox(height: 14),
                Image(
                  image: AssetImage(notes.photo_id),
                  height: 600,
                ),
                const SizedBox(height: 14),
                Text(
                  'Цена: ${notes.price}', // Отображение цены
                  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 0, 0)),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Логика для обработки покупки
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Вы добавили в корзину ${notes.title} за ${notes.price}')),
                    );
                  },
                  child: Text('Добавить в корзину'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
