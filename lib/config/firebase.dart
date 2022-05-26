import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/onshowModel.dart';

final FirebaseFirestore _db = FirebaseFirestore.instance;
Future<List<OnShow>> getOnShowID() async {
  QuerySnapshot<Map<String, dynamic>> result =
      await _db.collection('nowShowing').get();
  return result.docs
      .map((docSnapshot) => OnShow.fromDocumentSnapshot(docSnapshot))
      .toList();
}
