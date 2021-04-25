import 'package:flutter/cupertino.dart';
import 'package:camera/camera.dart';

class CameraScreen extends StatefulWidget {
  List<CameraDescription> cameras;
  CameraScreen(this.cameras);

  @override
  _CameraScreenState createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  CameraController controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new CameraController(
      widget.cameras[0],
      ResolutionPreset.medium,
    );
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return new Container();
    }

    return new AspectRatio(
      aspectRatio: controller.value.aspectRatio,
      child: new CameraPreview(controller),
    );
  }
}
