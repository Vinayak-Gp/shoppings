[11:34 pm, 13/10/2022] Swalih Babtraa: // ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:whatapp_clone/chat_screen/models/chatModel.dart';

class ChatDetails extends StatefulWidget {
  ChatDetails({super.key, required this.user});

  UserDetails user;

  @override
  State<ChatDetails> createState() => _ChatDetailsState();
}

class _ChatDetailsState extends State<ChatDetails> {
  final _messageController = TextEditingController();

  bool showSent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        leading: Row(
          children: [
            IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Ic…
[0:45 pm, 27/10/2022] Swalih Babtraa: // ignore_for_file: prefer_const_constructors

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

List<CameraDescription> Cameras = [];

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController _cameraController;
  Future<void>? CameraValue;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _cameraController = CameraController(Cameras[0], ResolutionPreset.high);
    CameraValue = _cameraController.initialize();
  }

  Widget build(BuildContext context) {
    return Stack(children: [
      FutureBuilder(
        future: CameraValue,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.connectionState==ConnectionState.done){
             return CameraPreview(_cameraController);
          }else{
            return CircularProgressIndicator();

          }
         
        },
      ),
    ]);
  }
}