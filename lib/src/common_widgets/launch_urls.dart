import 'package:url_launcher/url_launcher.dart';
import '../mocks/location_mocks.dart';

void locationUrls(int index) async {
  if (index < 0 || index >= locationUrl.length) {
    throw Exception('We don\'t find the buqui place');
  }
  String locationUrlString = locationUrl[index]['tapUrl'] as String;
  if (await canLaunchUrl(Uri.parse(locationUrlString))) {
    await launchUrl(Uri.parse(locationUrlString));
  } else {
    throw 'Could not launch URL: $locationUrlString';
  }
}

// void launchUrlFromList(int index) async {
//   if (index < 0 || index >= locationUrl.length) {
//     throw Exception('Whe don\'t find the buqui place');
//   }
// }
