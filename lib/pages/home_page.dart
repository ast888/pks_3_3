import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/item_note.dart';
import 'package:flutter_application_1/models/note.dart';


final List<Note> notes = <Note>[
  Note (
    id: 1,
    photo_id: 'assets/photo/16PM.jpg',
    title: 'iPhone 16 Pro Max 256 ГБ nano SIM+eSIM Natural Titanium',
    description: 'Ты любитель понтов? Этот телефон для тебя, чувак!',
    price: '186900 ₽',
  ),
  Note (
    id: 2,
    photo_id: 'assets/photo/15PM.jpg',
    title: 'iPhone 15 Pro Max 256 ГБ, Dual nano SIM, титан',
    description: 'Чувак, возьми себе 15 Про Макс и парься, все равно одно и тоже штампуют',
    price: '104500 ₽',
  ),
  Note (
    id: 3,
    photo_id: 'assets/photo/13.jpg',
    title: 'Apple iPhone 13 128 ГБ RU, nano SIM+eSIM, тёмная ночь',
    description: 'Ты бы еще айфон 4s посмотрел, этой трубе сто лет в обед!',
    price: '49500 ₽',
  ),
  Note (
    id: 4,
    photo_id: 'assets/photo/15.jpg',
    title: 'iPhone 15 128 ГБ, Dual nano SIM, голубой',
    description: 'Ого! Телефон для народа по людскому прайсу!',
    price: '64800 ₽',
  ),
];


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text('Магаз на Горбушке')),),
    body: ListView.builder(
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
      
      return ItemNote(notes: notes[index]);
    }
)
    );
    

  }
}