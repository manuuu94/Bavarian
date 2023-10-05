// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> batchDeleteAndTransferQuantity(
  String? sourceCollectionName,
  String? targetCollectionName,
) async {
  sourceCollectionName = sourceCollectionName ?? '';
  targetCollectionName = targetCollectionName ?? '';

  final firestore = FirebaseFirestore.instance;
  final sourceCollectionRef = firestore.collection(sourceCollectionName);
  final targetCollectionRef = firestore.collection(targetCollectionName);

  final QuerySnapshot snapshot = await sourceCollectionRef.get();

  for (final document in snapshot.docs) {
    final sourceData = document.data() as Map<String, dynamic>;
    final productName = sourceData['cartProductName'];
    final quantity = sourceData['quantity'];

    if (productName != null && quantity != null) {
      final matchingDocuments = await targetCollectionRef
          .where('productName', isEqualTo: productName)
          .get();

      if (matchingDocuments.docs.isNotEmpty) {
        final targetDocument = matchingDocuments.docs.first;
        final targetData = targetDocument.data();
        final quantity2 = targetData['quantity'] ?? 0;

        await targetDocument.reference.update({
          'quantity': quantity2 + quantity,
        });
      }
    }

    await document.reference.delete();
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the button on the right!
