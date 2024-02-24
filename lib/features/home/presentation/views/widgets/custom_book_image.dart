// import 'package:flutter/material.dart';

// class CustomBookImage extends StatelessWidget {
//   const CustomBookImage({required this.imageUrl});
//   final String imageUrl;

//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 2.6 / 4,
//       child: Padding(
//         padding: EdgeInsets.only(right: 8, left: 8),
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.red,
//             borderRadius: BorderRadius.circular(12),
//             image: DecorationImage(
//               fit: BoxFit.fill,
//               image: NetworkImage(
//                 "${imageUrl}",
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6 / 4,
      child: Padding(
        padding: EdgeInsets.only(right: 8, left: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: CachedNetworkImage(
            fit: BoxFit.fill,
            imageUrl: imageUrl,
            placeholder: (context, url) =>
                const Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
