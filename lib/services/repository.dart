import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sembast/sembast.dart';

import 'database.dart';

class AppRepository {
  /// Cloud Firestore instance
  final firestore = FirebaseFirestore.instance;

  /// Firebase Auth instance
  final auth = FirebaseAuth.instance;

  /// Local Sembast instance
  final Future<Database> _db = AppDatabase.instance.database;

  static const USERKEY = 'userkey';
}
