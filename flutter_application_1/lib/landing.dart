// import 'package:flutter_application_1/main.dart';

// class LoginScreen StatefulWidget {
//   const LoginScreen({super.key});

//   @override
//   State<LoginScreen> createState() => _LoginScreenState();
// }

// // class _LoginScreenState extends State<LoginScreen> {
// //   bool passwordHide = false;

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             color: Color(0xFF4E95E8),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Image.asset(
//                   'assets/images/car_icon.png', // Ganti dengan path ikon mobil Anda
//                   height: 100,
//                 ),
//                 Text(
//                   'Nebeng\nBro',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 24,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Container(
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(30),
//                   topRight: Radius.circular(30),
//                 ),
//               ),
//               padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Halo, Mitra Driver! Udah siap jalan?',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   SizedBox(height: 10),
//                   Text(
//                     'Yuk, masuk untuk mulai terima orderan!',
//                     style: TextStyle(
//                       fontSize: 16,
//                       color: Colors.grey,
//                     ),
//                   ),
//                   SizedBox(height: 20),
//                   Center(
//                     child: ElevatedButton(
//                       onPressed: () {
//                         // Aksi ketika tombol ditekan
//                       },
//                       style: ElevatedButton.styleFrom(
//                         primary: Color(0xFF4E95E8),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
//                       ),
//                       child: Text(
//                         'Masuk',
//                         style: TextStyle(
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }