// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future batchDelete(String? collectionName) async {
  collectionName = collectionName ?? '';
  final firestore = FirebaseFirestore.instance;
  final collectionRef = firestore.collection(collectionName);
  final QuerySnapshot snapshot = await collectionRef.get();
  snapshot.docs.forEach((document) async {
    print([document]);
    await document.reference.delete();
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
