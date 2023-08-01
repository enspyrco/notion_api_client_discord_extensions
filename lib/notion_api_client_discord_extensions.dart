/// Extensions on models from notion_api_client, providing String output
/// appropriate for Discord.
///
///
library;

import 'package:notion_api_client/notion_api_client.dart';

extension PageExtension on Page {
  toDiscordMessage() {
    return 'created by: $createdBy\n'
        'on: $createdTime';
  }
}
