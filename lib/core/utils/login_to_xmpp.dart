import 'package:xmpp_plugin/ennums/xmpp_connection_state.dart';
import 'package:xmpp_plugin/xmpp_plugin.dart';

import 'package:xmpp_plugin/xmpp_plugin.dart';

Future<void> loginToXmpp() async {
  final param = {
    "user_jid": "11xh1gnsxi1724645533296@ringme.vn",
    "password": "d870f42f1a0129beb1ed605950ada33573c33f93",
    "host": "chatappxmpp.ringme.vn",
    "port": "5222",
    // "nativeLogFilePath": "filepath",
    "requireSSLConnection": true,
    "autoDeliveryReceipt": true,
    "useStreamManagement": false,
    "automaticReconnection": true,
  };

  XmppConnection xmppConnection = XmppConnection(param);

  // Bắt đầu kết nối XMPP
  xmppConnection.start(_onXmppEvent);

  // Đợi kết nối XMPP thành công rồi mới đăng nhập
  await Future.delayed(Duration(seconds: 2)); // Đợi 2 giây (tuỳ vào server)
  await xmppConnection.login();
}

void _onXmppEvent(XmppConnectionState eventType, dynamic eventData) {
  print("XMPP Event: $eventType - $eventData");

  if (eventType == XmppConnectionState.connected) {
    print("✅ Kết nối thành công!");
  } else if (eventType == XmppConnectionState.failed) {
    print("❌ Lỗi XMPP: $eventData");
  }
}

