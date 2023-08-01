import 'dart:convert';

import 'package:notion_api_client/notion_api_client.dart';
import 'package:notion_api_client_discord_extensions/notion_api_client_discord_extensions.dart';
import 'package:test/test.dart';

import 'data/page_example.dart';

void main() {
  test('example page prints appropriate Discord message', () async {
    final json = jsonDecode(examplePageJsonString);
    final page = Page.fromJson(json);

    String message = page.toDiscordMessage();
    List<String> messageLines = message.split('\n');

    expect(messageLines.elementAt(0),
        'created by: Instance of \'PartialUserObject\'');
    expect(messageLines.elementAt(1), 'on: 2022-10-24 22:54:00.000Z');
  });
}
