import 'utils/base_web_rtc.dart';
import 'package:flutter_webrtc/flutter_webrtc.dart';
import 'logger.dart';

var _logger = getLogger('View');

const Map<String, dynamic> connectOptionsView = {'': ''};

class View extends BaseWebRTC {
  View(
      {required String streamName,
      required Function tokenGenerator,
      RTCVideoRenderer? mediaElement,
      bool autoReconnect = true})
      : super(
            streamName: streamName,
            tokenGenerator: tokenGenerator,
            autoReconnect: autoReconnect,
            logger: _logger);

  void connect(
      {Map<String, dynamic> connectOptions = connectOptionsView}) async {}
  void select(Map? layer) async {}

  Future<RTCRtpTransceiver> addRemoteTrack(
      String media, List<MediaStream> streams) async {
    // ignore: null_argument_to_non_null_type
    return Future<RTCRtpTransceiver>.value();
  }

  void project(String sourceId, List<Object> mapping) async {}
  void unproject(List<String> mediaIds) async {}
}
