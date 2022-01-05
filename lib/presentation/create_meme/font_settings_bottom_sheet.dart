import 'package:flutter/material.dart';
import 'package:memogenerator/presentation/create_meme/meme_text_on_canvas.dart';
import 'package:memogenerator/presentation/create_meme/models/meme_text.dart';
import 'package:memogenerator/resources/app_colors.dart';

class FontSettingsBottomSheet extends StatelessWidget {
  final MemeText memeText;

  const FontSettingsBottomSheet({
    Key? key,
    required this.memeText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.only(top: 8),
              height: 4,
              width: 64,
              decoration: BoxDecoration(
                color: AppColors.darkGrey38,
                borderRadius: BorderRadius.circular(2),
              ),
            ),
          ),
          const SizedBox(height: 16),
          MemeTextOnCanvas(
            padding: 8,
            selected: true,
            parentConstraints: const BoxConstraints.tightFor(),
            text: memeText.text,
          ),
        ],
      ),
    );
  }
}
