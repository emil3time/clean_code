// Package imports:
import 'package:intl/intl.dart';

// Project imports:
import 'package:future_mind_task/features/home/data/item_dto.dart';
import '../item_entity.dart';

class ItemMapper {
  static ItemEntity fromDTO(ItemDTO itemDTO) {
    return ItemEntity(
      description: _getDescription(itemDTO.description),
      imageUrl: itemDTO.imageUrl,
      modificationDate: _getFormatedDate(itemDTO.modificationDate),
      orderId: itemDTO.orderId,
      title: itemDTO.title,
      url: _getUrlFromDescription(itemDTO.description),
    );
  }

  static String _getDescription(String descrition) {
    final descriptioon = descrition.split('http')[0];

    return descriptioon;
  }

  static String _getUrlFromDescription(String descrition) {
    final url = 'http' + descrition.split('http')[1];

    // Some pages coming from untrusted http protocol
    // allow only save https versions (ssl certificate)
    if (url.startsWith('http://')) {
      final httpsUrl = url.replaceFirst('http://', 'https://');

      return httpsUrl;
    }

    return url;
  }

  static String _getFormatedDate(DateTime dataTime) {
    final DateFormat dateFormat = DateFormat("yyyy-MM-dd");
    return dateFormat.format(dataTime);
  }
}
