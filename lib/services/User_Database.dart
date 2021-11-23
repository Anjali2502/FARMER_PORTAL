import 'package:cloud_firestore/cloud_firestore.dart';
class DatabaseService{
  final String uid;
  DatabaseService({required this.uid});
  //collection reference
  final CollectionReference farmerCollection = FirebaseFirestore.instance.collection('farmer');
  final CollectionReference merchantCollection = FirebaseFirestore.instance.collection('merchant');
  //farmer update data
  Future updateFarmerData(String email,String user_type,String username)async{
    return await farmerCollection.doc(email).set({
      'email': email,
      'user_type': user_type,
      'username': username,
    });
  }
  //merchant update data
  Future updateMerchantData(String email,String user_type,String username)async{
    return await merchantCollection.doc(email).set({
      'email': email,
      'user_type': user_type,
      'username': username,
    });
  }

}