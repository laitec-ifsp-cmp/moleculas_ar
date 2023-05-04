import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:moleculas_ar/shared/widgets/shared_widgets.dart';

class MoleculeArPage extends StatefulWidget {
  const MoleculeArPage({Key? key}) : super(key: key);

  @override
  State<MoleculeArPage> createState() => _MoleculeArPageState();
}

class _MoleculeArPageState extends State<MoleculeArPage> {
  UnityWidgetController? _unityWidgetController;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(),
      body: UnityWidget(
        onUnityCreated: onUnityCreated,
        unloadOnDispose: true,
        fullscreen: false,
      ),
    );
  }

  void onUnityCreated(controller) {
    _unityWidgetController = controller;
  }

  @override
  void dispose() {
    if (_unityWidgetController != null) {
      _unityWidgetController?.dispose();
    }
    super.dispose();
  }
}
