import 'dart:io';
import 'dart:typed_data';
import 'package:desafio/domain/entities/detailStatement.dart';
import 'package:desafio/presentation/pages/comprovante/build_image.dart';
import 'package:desafio/presentation/widgets/component/base_appbar_pages/custom_app_bar.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/comprovante_details_page/custom_button_compartilhar.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class ComprovantePage extends StatefulWidget {
  const ComprovantePage({Key? key, required this.value}) : super(key: key);

  final DetStatement value;

  @override
  State<ComprovantePage> createState() => _ComprovantePageState();
}

class _ComprovantePageState extends State<ComprovantePage> {
  final controller = ScreenshotController();
  final bool _isLoading = false;

  @override
  void initState() {
    super.initState();
  }

  Future saveAndShare(Uint8List bytes) async {
    final directory = await getApplicationDocumentsDirectory();
    final image = File('${directory.path}/flutter.jpeg');
    image.writeAsBytesSync(bytes);

    await Share.shareFiles([image.path]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: CustomAppBar(
          navigator: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.keyboard_arrow_left),
          iconSize: 35,
          colorIcon: BaseColors().getBlackColor(),
          elevationApp: 0,
          backgroundColorApp: Colors.transparent,
          scrolledUnderElevationApp: 0,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.only( bottom: 10, ),
        child: SingleChildScrollView(
          //physics: NeverScrollableScrollPhysics(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildImage(context, widget.value),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, ),
                child: CustomButtonCompartilhar(
                  titulo: 'Compartilhar',
                  fontSize: 18,
                  printScreen: () async {
                    var image = await controller
                        .captureFromWidget(buildImage(context, widget.value));
                    saveAndShare(image);
                  },
                  isLoading: _isLoading,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
