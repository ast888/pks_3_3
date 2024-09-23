import 'package:flutter/material.dart';

import '../models/note.dart';

class NotePage extends StatelessWidget {
  final Note note;

  const NotePage({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 24,
        ),
        title: const Center(child: Text('Магаз на Горбушке')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                note.title,
                style: const TextStyle(fontSize: 34, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                note.description,
                style: const TextStyle(fontSize: 20),
              ),
              // Отображаем цену товара

              const SizedBox(height: 10),
              Center(
                child: Image(
                  image: AssetImage(note.photo_id),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black38),
                      padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Спасибо за покупку, чел',
                            style: TextStyle(fontSize: 36),
                          ),
                          backgroundColor: Colors.black,
                        ),
                      );
                    },
                    child: Text(
                      'Купить за ${note.price}', // Изменено на отображение цены в кнопке
                      style: TextStyle(fontSize: 24, color: const Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
