// import 'package:flutter/material.dart';


// class AttributeInfoWidget extends StatelessWidget {
//   final String attributeName;
//   final TextEditingController controller;

//   const AttributeInfoWidget({
//     super.key,
//     required this.attributeName,
//     required this.controller,
//   });

//   @override
//   Widget build(BuildContext context) {
//     void goToEdit(
//       String title,
//       TextEditingController controller,
//       // String textHelper,
//     ) {
//       Navigator.push<void>(
//         context,
//         MaterialPageRoute(
//           builder: (BuildContext context) => EditInfoWidget(
//             title: title,
//             controller: controller,
//             // textHelper: textHelper,
//           ),
//         ),
//       );
//     }

//     return InkWell(
//       onTap: () => goToEdit(attributeName, controller),
//       child: SizedBox(
//         width: double.infinity,
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 attributeName,
//                 style: context.textStyles.textLight.copyWith(
//                   color: Colors.grey[600],
//                   fontSize: 14,
//                 ),
//               ),
//               const SizedBox(height: 2),
//               Text(
//                 controller.text,
//                 style: context.textStyles.textMedium.copyWith(
//                   fontSize: 16,
//                 ),
//               ),
//               const Divider(height: 4),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
