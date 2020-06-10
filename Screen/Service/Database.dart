import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService{

  final String uid;

  DatabaseService({this.uid});

  final CollectionReference healthCollection = Firestore.instance.collection("health");

  Future updateUserData(String name, String sick) async{
    return await healthCollection.document(uid).setData({
      'name' : name,
      'sick' : sick,
    });
  }

}