// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

// Project imports:
import 'package:future_mind_task/core/routing/router.dart';
import 'package:future_mind_task/features/home/domain/entities/item_entity.dart';

class CustomCard extends StatelessWidget {
  final ItemEntity item;

  const CustomCard({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        _openWebView(context, item.url);
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              item.imageUrl,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  SizedBox(height: 8.h),
                  Text(item.modificationDate),
                  SizedBox(height: 8.h),
                  Text(
                    item.description,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _openWebView(BuildContext context, String url) async {
  final canLounch = await canLaunchUrl(Uri.parse(url));

  if (canLounch == true) {
    await context.router.push(UrlWebRoute(url: (url)));
  } else {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(AppLocalizations.of(context)!.webWievError + '$url'),
    ));
  }
}
