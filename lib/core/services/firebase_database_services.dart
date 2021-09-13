// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
// import 'package:project_1/core/model/host-notification.dart';
// import 'package:project_1/core/model/location.dart';
// import 'package:project_1/core/model/message.dart';
// import 'package:project_1/core/model/rent-car.dart';
// import 'package:project_1/core/model/user.dart';
// import 'package:dio/dio.dart';

// class FirebaseDatabaseService {
//   final firestoreRef = FirebaseFirestore.instance;
//   final rentUserRef = FirebaseFirestore.instance.collection('rent-users');
//   final hostUserRef = FirebaseFirestore.instance.collection('host-users');
//   final guestUserRef = FirebaseFirestore.instance.collection('guest-users');

//   firebase_storage.FirebaseStorage storage =
//       firebase_storage.FirebaseStorage.instance;

//   // final summaryRef = FirebaseFirestore.instance.collection('summary');

//   ////***************************************************************************** */
//   ///these function will Locationfrom database firestore
// ////***************************************************************************** */
// ////***************************************************************************** */
// //   @override
//   // Future<List<Location>>
//   getAllLocation() async {
//     print("GetAllLocations/");
//     try {
//       List<Location> locations = [];
//       DocumentSnapshot docSnapshot =
//           await firestoreRef.collection('adminInfo').doc('locations').get();
//       print(docSnapshot['data'].length);

//       if (docSnapshot['data'] != null) {
//         docSnapshot['data'].forEach((v) {
//           locations.add(new Location.fromJson(v));
//         });
//       }
//       print("Length of locations=> ${locations.length}");
//       return locations;
//     } catch (e, s) {
//       print("Exception/getAllLocations=> $e, $s");
//     }
//   }

//   getAllRentedCars({isPopular}) async {
//     print("GetAllRentedCars/");
//     try {
//       List<RentedCar> rentedCars = [];
//       // DocumentSnapshot docSnapshot =
//       QuerySnapshot snapshot = await firestoreRef
//           .collection('rented-cars')
//           .where('isPopular', isEqualTo: true)
//           .get();

//       if (snapshot.docs.isEmpty) {
//         print("Rented Car snapshot is empty");
//         // attraction = Attraction(name: "notfound");
//         // print("ITEM NOT FOUND ==> ${attraction.toJson()}");
//       } else {
//         snapshot.docs.forEach((element) {
//           print("each iteration=> ${element['name']}");
//           rentedCars.add(RentedCar.fromJson(element, element.id));
//         });
//       }
//       return rentedCars;
//     } catch (e, s) {
//       print("Exception/getAllRentedCars=========> $e, $s");
//     }
//   }

//   updateFavoriteRentedCar(bool isFavorite, carUid) async {
//     print('@updateFavoriteRentedCar: ===>$isFavorite');
//     try {
//       await firestoreRef
//           .collection('rented-cars')
//           .doc(carUid)
//           .update({"isFavorite": isFavorite});

//       print("IsFavorite fiedl  updated successfully");
//     } catch (e) {
//       print('Exception @updateFavoriteRentedCar: $e');
//     }
//   }

//   getAllBookedRentedCars(uid) async {
//     print("getAllHost Booked Cars/");
//     try {
//       List<RentedCar> bookedRendCars = [];
//       // DocumentSnapshot docSnapshot =
//       QuerySnapshot snapshot = await firestoreRef
//           .collection('rent-users')
//           .doc(uid)
//           .collection('booked-cars')
//           .get();

//       if (snapshot.docs.isEmpty) {
//         print("Booked Rent Car snapshot is empty");
//         // attraction = Attraction(name: "notfound");
//         // print("ITEM NOT FOUND ==> ${attraction.toJson()}");
//       } else {
//         snapshot.docs.forEach((element) {
//           // print("each iteration=> ${element['name']}");
//           bookedRendCars.add(RentedCar.fromJson(element, element.id));
//         });
//       }
//       return bookedRendCars;
//     } catch (e, s) {
//       print("Exception/getAllBookedRentedCars=========> $e, $s");
//     }
//   }

//   getAllHostBookedRentedCars(hostUid) async {
//     print("getAllHost Booked Cars/");
//     try {
//       List<RentedCar> hostBookedCars = [];
//       // DocumentSnapshot docSnapshot =
//       QuerySnapshot snapshot = await firestoreRef
//           .collection('host-users')
//           .doc(hostUid)
//           .collection('booked-cars')
//           .get();

//       if (snapshot.docs.isEmpty) {
//         print("Booked Rent Car snapshot is empty");
//         // attraction = Attraction(name: "notfound");
//         // print("ITEM NOT FOUND ==> ${attraction.toJson()}");
//       } else {
//         snapshot.docs.forEach((element) {
//           // print("each iteration=> ${element['name']}");
//           hostBookedCars.add(RentedCar.fromJson(element, element.id));
//         });
//       }
//       return hostBookedCars;
//     } catch (e, s) {
//       print("Exception/getAllHost Booked Cars=========> $e, $s");
//     }
//   }

//   getServiceCharges() async {
//     print("getServiceCharges/");
//     String serviceCharges;
//     try {
//       DocumentSnapshot docSnapshot =
//           await firestoreRef.collection('adminInfo').doc('charges').get();

//       if (docSnapshot.exists) {
//         serviceCharges = docSnapshot['serviceCharges'];
//       }
//       print("ServiceCharges=> $serviceCharges");
//       return serviceCharges;
//     } catch (e, s) {
//       print("Exception/ServiceCharges=> $e, $s");
//     }
//   }

//   getTermsAndCondition() async {
//     print("getTermsAndCondition/");
//     String terms;
//     try {
//       DocumentSnapshot docSnapshot = await firestoreRef
//           .collection('adminInfo')
//           .doc('termsAndCondition')
//           .get();

//       if (docSnapshot.exists) {
//         terms = docSnapshot['data'];
//       }
//       print("getTermsAndCondition=> $terms");
//       return terms;
//     } catch (e, s) {
//       print("Exception/getTermsAndCondition=> $e, $s");
//     }
//   }

//   Future<void> addToBookedList(RentedCar bookedCar, uid) async {
//     print('@addToBookedList:===================> USER UID is ==> $uid ');
//     try {
//       await firestoreRef
//           .collection('rent-users')
//           .doc(uid)
//           .collection('booked-cars')
//           .doc(bookedCar.id)
//           .set(bookedCar.toJson());
//       // .add(bookedCar.toJson());
//     } catch (e) {
//       print('Exception @registerUser: $e');
//     }
//   }

//   Future<void> addToHostBookedList(RentedCar bookedCar, hostUid) async {
//     print(
//         '@addToHostBookedList:===================> USER UID is ==> $hostUid ');
//     try {
//       await firestoreRef
//           .collection('host-users')
//           .doc(hostUid)
//           .collection('booked-cars')
//           .doc(bookedCar.id)
//           .set(bookedCar.toJson());
//       // .add(bookedCar.toJson());
//     } catch (e) {
//       print('Exception @registerUser: $e');
//     }
//   }

// // @override
// //this will register user on successfull singup
//   Future<void> registerUser(USER user) async {
//     print('@registerUser: uid is ${user.uid}');
//     try {
//       await firestoreRef
//           .collection('rent-users')
//           .doc(user.uid)
//           .set(user.toJson());
//     } catch (e) {
//       print('Exception @registerUser: $e');
//     }
//   }

// // @override
// //this will register user on successfull singup
//   Future<void> updateRentFcmToken(String fcmtoken, String uuid) async {
//     print(
//         '@updateRentUserFCMTOKEN: uid is $uuid \n   ===> FCM Token is ==> $fcmtoken');
//     try {
//       await firestoreRef
//           .collection('rent-users')
//           .doc(uuid)
//           .update({"fcmToken": "$fcmtoken"});

//       print("FCM updated successfully");
//     } catch (e) {
//       print('Exception @updateFCMTOKEN: $e');
//     }
//   }

//   Future<void> updateHostFcmToken(String fcmtoken, String uuid) async {
//     print(
//         '@updateHostFcmToken: uid is $uuid \n   ===> FCM Token is ==> $fcmtoken');
//     try {
//       await firestoreRef
//           .collection('host-users')
//           .doc(uuid)
//           .update({"fcmToken": "$fcmtoken"});

//       print("FCM updated successfully");
//     } catch (e) {
//       print('Exception @updateHostFcmToken: $e');
//     }
//   }

//   Future<void> updateGuestFcmToken(String fcmtoken, String uuid) async {
//     print(
//         '@updateGuestFcmToken: uid is $uuid \n   ===> FCM Token is ==> $fcmtoken');
//     try {
//       await firestoreRef
//           .collection('guest-users')
//           .doc(uuid)
//           .update({"fcmToken": "$fcmtoken"});

//       print("FCM updated successfully");
//     } catch (e) {
//       print('Exception @updateGuestFcmToken: $e');
//     }
//   }

// //this will get user data for authentication purpose
//   Future<USER> getUserData(uid) async {
//     print('@DatabaseService/getUserData of user ==> $uid');
//     try {
//       final DocumentSnapshot snapshot = await FirebaseFirestore.instance
//           .collection('rent-users')
//           .doc(uid)
//           .get();
//       if (snapshot.data != null) {
//         final user = USER.fromJson(snapshot.data(), uid);
//         print('@DatabaseService/getUserData: ${user.toJson()}');
//         return user;
//       } else {
//         print('User Data is null');
//         return null;
//       }
//     } catch (e) {
//       print('Exception @getUserData: $e');
//       return null;
//     }
//   }

// //this will checked if the car is already booked in host booking collection or not
//   Future<bool> isAlreadyBooked(hostUid, bookingCarId) async {
//     print(
//         '@DatabaseService/Checking isAlreadyBooked car in =>$hostUid host list');
//     try {
//       final snapshot = await FirebaseFirestore.instance
//           .collection('host-users')
//           .doc(hostUid)
//           .collection('booked-cars')
//           .doc(bookingCarId)
//           .get();
//       if (snapshot.exists) {
//         print('The Booking one car is Already exist');
//         return true;
//       } else {
//         print('The Booking one car is not Available');
//         return false;
//       }
//     } catch (e) {
//       print('Exception @isAlreadyBookedCar: $e');
//       return false;
//     }
//   }

//   Future<void> addNotificationToHost(
//       hostUid, HostNotification hostNotification, userUid) async {
//     print(
//         '@addNotificationToHost:===================> HOST UID is ==> $hostUid ');
//     try {
//       await firestoreRef
//           .collection('host-users')
//           .doc(hostUid)
//           .collection('notifications')
//           .doc("${hostNotification.bookedCar.id}_$userUid")
//           .set(hostNotification.toJson());
//       // .add(bookedCar.toJson());
//     } catch (e) {
//       print('Exception @addNotificationToHost: $e');
//     }
//   }

// ////
//   ///************************************************************************************************************* */
//   ///************************************************************************************************************* */
//   ///
//   ///HOST USER DATABASE FUNCTIONS
//   ///
//   ///
//   ///************************************************************************************************************* */
//   ///************************************************************************************************************* */

// // @override
// //this will register user on successfull singup
//   Future<void> registerHostUser(USER user) async {
//     print('@registerHostUser: uid is ${user.uid}');
//     try {
//       await firestoreRef
//           .collection('host-users')
//           .doc(user.uid)
//           .set(user.toJson());
//     } catch (e) {
//       print('Exception @registerHostUser: $e');
//     }
//   }

// //this will get user data for authentication purpose
//   Future<USER> getHostUserData(uid) async {
//     print('@DatabaseService/getHostUserData of user ==> $uid');
//     try {
//       final DocumentSnapshot snapshot = await FirebaseFirestore.instance
//           .collection('host-users')
//           .doc(uid)
//           .get();
//       if (snapshot.data != null) {
//         final user = USER.fromJson(snapshot.data(), uid);
//         print('@DatabaseService/getHostUserData: ${user.toJson()}');
//         return user;
//       } else {
//         print('User Data is null');
//         return null;
//       }
//     } catch (e) {
//       print('Exception @getHostUserData: $e');
//       return null;
//     }
//   }

//   getMyAllCars(uuid) async {
//     print("GetMyAllCars/");
//     try {
//       List<RentedCar> yourCars = [];
//       // DocumentSnapshot docSnapshot =
//       QuerySnapshot snapshot = await firestoreRef
//           .collection('host-users')
//           .doc(uuid)
//           .collection('your-cars')
//           .get();

//       if (snapshot.docs.isEmpty) {
//         print("Your Car snapshot is empty");
//         // attraction = Attraction(name: "notfound");
//         // print("ITEM NOT FOUND ==> ${attraction.toJson()}");
//       } else {
//         snapshot.docs.forEach((element) {
//           print("each iteration=> ${element['name']}");
//           yourCars.add(RentedCar.fromJson(element, element.id));
//         });
//       }
//       return yourCars;
//     } catch (e, s) {
//       print("Exception/GetAllMyCars=========> $e, $s");
//     }
//   }

//   Future<void> addToMyCars(RentedCar addedCar, uid) async {
//     print('@addToMyCars:===================> USER UID is ==> $uid ');
//     try {
//       await firestoreRef
//           .collection('host-users')
//           .doc(uid)
//           .collection('your-cars')
//           // .doc(addedCar.id)
//           .doc()
//           .set(addedCar.toJson());
//       // .add(bookedCar.toJson());
//     } catch (e) {
//       print('Exception @addToMyCars: $e');
//     }
//   }

//   Future<void> addToRentedCars(RentedCar rentedCar) async {
//     print('@addToRentedCars:}');
//     try {
//       await firestoreRef
//           .collection('rented-cars')
//           .doc()
//           .set(rentedCar.toJson());
//     } catch (e) {
//       print('Exception @addToRentedCars: $e');
//     }
//   }

//   getAllHostNotifications(uuid) async {
//     print("getAllHostNotifications/");
//     try {
//       List<HostNotification> notifications = [];
//       // DocumentSnapshot docSnapshot =
//       QuerySnapshot snapshot = await firestoreRef
//           .collection('host-users')
//           .doc(uuid)
//           .collection('notifications')
//           .get();

//       if (snapshot.docs.isEmpty) {
//         print("Your notification snapshot is empty");
//         // attraction = Attraction(name: "notfound");
//         // print("ITEM NOT FOUND ==> ${attraction.toJson()}");
//       } else {
//         snapshot.docs.forEach((element) {
//           // print("each iteration=> ${element['name']}");
//           notifications.add(HostNotification.fromJson(element));
//         });
//       }
//       return notifications;
//     } catch (e, s) {
//       print("Exception/GetAllHostNotifications=========> $e, $s");
//     }
//   }

//   //  Future<void> updateFCMforAllHostedCars(String fcmtoken, String uuid) async {
//   //   print(
//   //       '@updateFCMforAllHostedCars: uid is $uuid \n   ===> FCM Token is ==> $fcmtoken');
//   //   try {
//   //     await firestoreRef
//   //         .collection('rent-users')
//   //         .doc(uuid).collection('your-cars')
//   //         .update({"fcmToken": "$fcmtoken"});

//   //     print("FCM updated successfully");
//   //   } catch (e) {
//   //     print('Exception @updateFCMforAllHostedCars: $e');
//   //   }
//   // }
// ////
//   ///************************************************************************************************************* */
//   ///************************************************************************************************************* */
//   ///
//   ///GUEST USER DATABASE FUNCTIONS
//   ///
//   ///
//   ///************************************************************************************************************* */
//   ///************************************************************************************************************* */
// //this will register user on successfull singup
//   Future<void> registerGuestUser(USER user) async {
//     print('@registerGuestUser: uid is ${user.uid}');
//     try {
//       await firestoreRef.collection('guest-users').doc(user.uid).set({
//         'userId': user.uid,
//         'fcmToken': user.fcmToken,
//         'macAddress': "DEVICE_MAC_ADDRESS",
//         'deviceInfo': "DEVICE_INFORMATION",
//       });
//     } catch (e) {
//       print('Exception @registerGuestUser: $e');
//     }
//   }

//   getAllBookedGuestCars(uid) async {
//     print("getAllBookedGuestCars/");
//     try {
//       List<RentedCar> bookedGuestCars = [];
//       // DocumentSnapshot docSnapshot =
//       QuerySnapshot snapshot = await firestoreRef
//           .collection('guest-users')
//           .doc(uid)
//           .collection('booked-cars')
//           .get();

//       if (snapshot.docs.isEmpty) {
//         print("Booked Guest Car snapshot is empty");
//         // attraction = Attraction(name: "notfound");
//         // print("ITEM NOT FOUND ==> ${attraction.toJson()}");
//       } else {
//         snapshot.docs.forEach((element) {
//           // print("each iteration=> ${element['name']}");
//           bookedGuestCars.add(RentedCar.fromJson(element, element.id));
//         });
//       }
//       return bookedGuestCars;
//     } catch (e, s) {
//       print("Exception/getAllBookedGuestCars=========> $e, $s");
//     }
//   }

//   Future<void> addToGuestBookedList(RentedCar bookedCar, uid) async {
//     print('@addToGUESTBookedList:===================> GUEST UID is ==> $uid ');
//     try {
//       await firestoreRef
//           .collection('guest-users')
//           .doc(uid)
//           .collection('booked-cars')
//           .doc(bookedCar.id)
//           .set(bookedCar.toJson());
//       // .add(bookedCar.toJson());
//     } catch (e) {
//       print('Exception @registerUser: $e');
//     }
//   }

//   Future<void> sendMessage({
//     Message message,
//     chatId,
//   }) async {
//     print('@SendMessage:===================> chatId==> $chatId ');
//     try {
//       await FirebaseFirestore.instance
//           .collection('chat')
//           .doc(chatId)
//           .collection('messages')
//           .add(message.toJson());
//       // .add(bookedCar.toJson());
//     } catch (e) {
//       print('Exception @SendMessage: $e');
//     }
//   }

// ////
//   ///upload pic to storage firebase
//   ///
//   ///
//   // Future<String>
//   uploadFile(File file, reference, fileName) async {
//     // File file = File(filePath);

//     try {
//       await firebase_storage.FirebaseStorage.instance
//           .ref('$reference/$fileName.png')
//           .putFile(file);

//       String downloadURL = await firebase_storage.FirebaseStorage.instance
//           .ref('$reference/$fileName.png')
//           .getDownloadURL();

//       print("UPLOADED IMAGE URL IS +========> $downloadURL");

//       return downloadURL;
//     } on FirebaseException catch (e) {
//       // e.g, e.code == 'canceled'
//       print("Exception @UploadFile====>$e");
//     }
//   }

//   sendNotification({
//     hostFCMtoken,
//     userName,
//   }) async {
//     final fcmToken = hostFCMtoken;
//     // 'ef-KxIlWRcaQs4QSoYhCjk:APA91bGAoiPUOh-39DAhpoiPBZi9V7lJXhGXpikJnnbWzqIM_Lm4nKY_H2gdpV4EaEiMh_B5xnbEQQ07Fev-B5IA9hGiBPuliPv3qjcJVjYuTLKlRG4z_UCrnCkkjQPrG08jJQVKElKl';
//     //fcmServerKey will remain same
//     final fcmServerKey =
//         'AAAAL7k1d-E:APA91bGxSiY9LdHx1ycpLK2pCdgt3YmeS1Dgxn_02WpGbr6AZNuJInFao92jjU8ItknsHRbfiYElvyp0ZRXmdC3B70vUg1xmGKMiu2v5j4ygN95WIotE0BNrg2k2X4AGSIz8DF7rtNWJ';
//     final dio = Dio();
//     dio.options.headers['Content-Type'] = 'application/json';
//     dio.options.headers["Authorization"] = 'key=$fcmServerKey';
//     final sendFcmApi = 'https://fcm.googleapis.com/fcm/send';
//     final response = await dio.post(
//       '$sendFcmApi',
//       data: {
//         'notification': {
//           'body': 'This user booked a car',
//           'title': '$userName '
//         },
//         'priority': 'high',
//         'data': {
//           'click_action': 'FLUTTER_NOTIFICATION_CLICK',
//           // 'type': '$callType', // audio_call, video_call,
//           // 'patient_id': '$patientId',
//           // 'conversation_id': '$conversationId',
//           'host': ''
//         },
//         'to': '$fcmToken',
//       },
//     );

//     print('@sendNotification: Response: $response');
//   }
// }
