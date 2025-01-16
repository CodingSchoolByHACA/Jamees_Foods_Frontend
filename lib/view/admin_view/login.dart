
// import 'package:flutter/material.dart';
// import 'package:jammes_food/view/admin_view/sidebar.dart';



// class LoginPage extends StatelessWidget {
//   const LoginPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF7F7F7),
//       body: Center(
//         child: Container(
//           width: 400,
//           padding: const EdgeInsets.all(24),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black.withOpacity(0.1),
//                 blurRadius: 16,
//                 offset: const Offset(0, 8),
//               ),
//             ],
//           ),
//           child: Column(mainAxisSize: MainAxisSize.min, children: [
//             Image.asset(
//               'assets/logo.png',
//               height: 80,
//             ),
//             SizedBox(height: 10),
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Username',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//             ),
//             SizedBox(height: 16),
//             TextFormField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                 ),
//               ),
//             ),
//             SizedBox(height: 10),
//             Align(
//               alignment: Alignment.centerRight,
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () {
//                 Navigator.pushAndRemoveUntil(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => AdminSidebarWithTabView(),
//                   ),
//                   (route) => false,
//                 );
//               },
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Color.fromARGB(255, 209, 20, 6),
//                 minimumSize: Size(double.infinity, 50),
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               child: Text(
//                 'Login',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//           ]),
//         ),
//       ),
//     );
//   }
// }
