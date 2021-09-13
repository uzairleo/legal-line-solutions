// import 'dart:io';

// class USER {
//   String uid;
//   String firstName;
//   String lastName;
//   String phone;
//   String email;
//   String password;
//   String fcmToken;
//   String imgUrl;
//   File imgFile;

//   USER(
//       {this.uid,
//       this.firstName,
//       this.lastName,
//       this.phone,
//       this.imgFile,
//       this.email,
//       this.password,
//       this.fcmToken,
//       this.imgUrl});

//   USER.fromJson(doc, uid) {
//     this.uid = uid;
//     this.firstName = doc['firstName'];
//     this.lastName = doc['lastName'];
//     this.email = doc['email'];
//     // this.password = doc['password'];
//     this.phone = doc['phone'];
//     this.imgUrl = doc['imgUrl'];
//     this.fcmToken = doc['fcmToken'];
//   }

//   toJson() {
//     // print("PASSWORD===> ${this.password}");
//     return {
//       'firstName': this.firstName,
//       'lastName': this.lastName,
//       'email': this.email,
//       'phone': this.phone,
//       'imgUrl': this.imgUrl,
//       'fcmToken': this.fcmToken,
//     };
//   }
// }
