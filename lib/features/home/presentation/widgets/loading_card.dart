// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

// Project imports:
import 'package:future_mind_task/theme/styles/app_colors.dart';

class LoadingCard extends StatelessWidget {
  const LoadingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 550.h,
            width: double.infinity,
            color: AppColors.darkGray,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 25.h,
                  width: 120.w,
                  color: AppColors.darkGray,
                ),
                SizedBox(height: 8.h),
                Container(
                  height: 14.h,
                  width: 50,
                  color: AppColors.darkGray,
                ),
                SizedBox(height: 8.h),
                Container(
                  height: 100.h,
                  width: double.infinity,
                  color: AppColors.darkGray,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// Card(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Image.network(
//               item.imageUrl,
//               fit: BoxFit.cover,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     item.title,
//                     style: Theme.of(context).textTheme.headlineSmall,
//                   ),
//                   SizedBox(height: 8.h),
//                   Text(item.modificationDate),
//                   SizedBox(height: 8.h),
//                   Text(
//                     item.description,
//                     style: Theme.of(context).textTheme.bodyMedium,
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
