import 'package:firebase_database/firebase_database.dart';

class ChannelLogic{
    static final fb = FirebaseDatabase.instance;
    static final usersRef = fb.ref() .child('channels').child("-N4FU3IC4Xc84_hBI5r3"). child("users");
    static final refChannelName = fb.ref() .child('channels').child("-N4FU3IC4Xc84_hBI5r3"). child("channel_name");
    static final refChannelPassword = fb.ref() .child('channels').child("-N4FU3IC4Xc84_hBI5r3"). child("password");


  static void  addNewUserToFirebaseChannel(String uid){

        usersRef.child(uid.toString())
                    .push()
                    .set(
                     {
                      "uid_of_the_user_joined":uid,
                     }
                    )
                    .asStream();
  }

  static void removeUserFromFirebaseChannel(String uid){
        usersRef.child(uid.toString()).remove();
  }



}
