// import 'package:demo_flutter/rmlivestream.dart';
// import 'package:flutter/material.dart';
//
// class ItemLivestream extends StatelessWidget {
//   final RMLivestream rmLivestream;
//
//   const ItemLivestream({
//     Key? key,
//     required this.rmLivestream,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(8),
//       margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black12,
//             blurRadius: 5,
//             offset: Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Ảnh đại diện
//           ClipRRect(
//             borderRadius: BorderRadius.circular(10),
//             child: Image.network(
//               rmLivestream.linkAvatar,
//               width: 120,
//               height: 80,
//               fit: BoxFit.cover,
//             ),
//           ),
//           const SizedBox(width: 10),
//
//           // Thông tin livestream
//           Expanded(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   rmLivestream.title,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 Text(
//                   rmLivestream.description,
//                   style: const TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                   ),
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 const SizedBox(height: 5),
//                 Text(
//                   "👁️ ${rmLivestream.totalView}  ❤️${rmLivestream.totalLike}",
//                   style: const TextStyle(fontSize: 14, color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
