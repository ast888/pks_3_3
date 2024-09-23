import 'package:flutter/material.dart';

class Note {
  final int id;
  final String photo_id;
  final String title;
  final String description;
  final String price;
  Note({ required this.title, required this.description, required this.id, required this.photo_id, required this.price});
}