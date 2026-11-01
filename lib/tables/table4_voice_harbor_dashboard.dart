import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:permission_handler/permission_handler.dart';

class Table4VoiceHarborDashboard extends StatefulWidget {
  const Table4VoiceHarborDashboard({super.key});
  @override
  State<Table4VoiceHarborDashboard> createState() => _Table4State();
}

class _Table4State extends State<Table4VoiceHarborDashboard> {
  RtcEngine? engine;
  bool joined = false;
  int? remoteUid;
  bool muted = false;

  // GANTI BOS PAKAI APP ID BOS LU DARI console.agora.io BOS
  final String appId = "YOUR_AGORA_APP_ID";
  final String channel = "ombax_harbor";
  final String token = "";

  @override
  void initState() {
    super.initState();
    initAgora();
  }

  Future<void> initAgora() async {
    await Permission.microphone.request();
    engine = createAgoraRtcEngine();
    await engine!.initialize(RtcEngineContext(
      appId: appId,
      channelProfile: ChannelProfileType.channelProfileCommunication,
    ));
    engine!.registerEventHandler(RtcEngineEventHandler(
      onJoinChannelSuccess: (RtcConnection c, int uid) {
        setState(() => joined = true);
      },
      onUserJoined: (RtcConnection c, int uid, int elapsed) {
        setState(() => remoteUid = uid);
      },
      onUserOffline: (RtcConnection c, int uid, UserOfflineReasonType reason) {
        setState(() => remoteUid = null);
      },
    ));
    await engine!.enableAudio();
  }

  Future<void> join() async {
    await engine!.joinChannel(
      token: token,
      channelId: channel,
      uid: 0,
      options: const ChannelMediaOptions(
        autoSubscribeAudio: true,
        publishMicrophoneTrack: true,
      ),
    );
  }

  Future<void> leave() async {
    await engine!.leaveChannel();
    setState(() {
      joined = false;
      remoteUid = null;
    });
  }

  @override
  void dispose() {
    engine?.leaveChannel();
    engine?.release();
    super.dispose();
  }

  Widget panel(IconData icon, String title, String sub) {
    return Container(
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
        color: const Color(0xFF0F243E),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFF38BDF8).withOpacity(0.35)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: const Color(0xFF38BDF8), size: 26),
          const SizedBox(height: 4),
          Text(title, style: const TextStyle(color: Colors.white, fontSize: 11, fontWeight: FontWeight.bold)),
          Text(sub, style: const TextStyle(color: Colors.white60, fontSize: 9)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF020E1A),
      appBar: AppBar(
        title: const Text('TABEL 4 - VOICE HARBOR'),
        backgroundColor: const Color(0xFF020E1A),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(14),
            decoration: BoxDecoration(
              color: const Color(0xFF0F243E),
              borderRadius: BorderRadius.circular(14),
              border: Border.all(color: const Color(0xFF38BDF8).withOpacity(0.3)),
            ),
            child: Row(
              children: [
                const Icon(Icons.graphic_eq, color: Color(0xFF38BDF8)),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(joined ? 'CONNECTED' : 'DISCONNECTED', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 13)),
                      Text(remoteUid != null ? 'Trader $remoteUid Speaking' : 'No remote trader', style: const TextStyle(color: Colors.white60, fontSize: 11)),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    color: joined ? Colors.green : Colors.redAccent,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(joined ? 'LIVE' : 'OFF', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 10)),
                ),
              ],
            ),
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 3,
              padding: const EdgeInsets.all(12),
              children: [
                panel(Icons.mic, 'Voice Room', joined ? 'Joined' : 'Tap Join'),
                panel(Icons.record_voice_over, 'Transcript', 'AI Voice'),
                panel(Icons.groups, 'Pods', remoteUid != null ? '1 Online' : '0 Online'),
                panel(Icons.security, 'Encrypted', 'E2E Secure'),
                panel(Icons.translate, 'Translate', 'ID-EN'),
                panel(Icons.folder, 'Storage 1', 'Ready'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton.icon(
                  onPressed: joined ? leave : join,
                  icon: Icon(joined ? Icons.call_end : Icons.call),
                  label: Text(joined ? 'LEAVE' : 'JOIN HARBOR'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: joined ? Colors.red : Colors.green,
                    padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    engine?.muteLocalAudioStream(!muted);
                    setState(() => muted = !muted);
                  },
                  icon: Icon(muted ? Icons.mic_off : Icons.mic, color: Colors.white),
                  style: IconButton.styleFrom(backgroundColor: const Color(0xFF0F243E)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
