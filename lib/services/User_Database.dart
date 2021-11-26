import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmer_merchant/models/farmer_user.dart';
import 'package:flutter/cupertino.dart';
class DatabaseService{
  final String? uid;
  final String? email;
  DatabaseService({required this.uid,required this.email});
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
  Future updateDocFields(String fullname,String phno,String state,String city,String w_p,String w_q,String r_p,String r_q,String ma_p,String ma_q,String mi_p,String mi_q,String j_p,String j_q,String c_p,String c_q) async {
    var userDoc = FirebaseFirestore.instance.collection('farmer').doc(email);
    // userDoc.updateData({'fieldName':'newValue'});
    userDoc.update({
      'name': fullname,
      'phone_number':phno,
      'State': state,
      'City': city,
      'wheat_price':w_p,
      'wheat_quantity':w_q,
      'rice_price':r_p,
      'rice_quantity':r_q,
      'maize_price':ma_p,
      'maize_quantity':ma_q,
      'millets_price':mi_p,
      'millets_quantity':mi_q,
      'jute_price':j_p,
      'jute_quantity':j_q,
      'cotton_price':c_p,
      'cotton_quantity':c_q,
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
  FarmerData _farmerDataFromSnapshot(DocumentSnapshot snapshot){
    return FarmerData(
        email: email,
        city:snapshot.get('City'),
        phno: snapshot.get('phone_number'),
        fullname: snapshot.get('name'),
        state: snapshot.get('State'),
        w_p: '',
        w_q: '',
        r_p: '',
        ma_q: '',
        mi_q: '',
        mi_p: '',
        j_q: '',
        j_p: '',
        r_q: '',
        ma_p: '',
        c_q: '',
        c_p: ''
    );
  }
  Stream<QuerySnapshot> get farmer {
    return farmerCollection.snapshots();

  }
  Stream<QuerySnapshot> get merchant {
    return merchantCollection.snapshots();
  }
  Stream<FarmerData> get farmerInfo{
    return farmerCollection.doc(email).snapshots().map(_farmerDataFromSnapshot);
  }

}