import 'package:cloud_firestore/cloud_firestore.dart';

class OnShow {
  String id;
  String imdb_id;

  OnShow({required this.id, required this.imdb_id});

  factory OnShow.fromJson(Map<String, dynamic> json) =>
      OnShow(id: json['id'], imdb_id: json['imdb_id']);

  OnShow.fromDocumentSnapshot(DocumentSnapshot<Map<String, dynamic>> doc)
      : id = doc.id,
        imdb_id = doc.data()!["imdb_id"];
}
