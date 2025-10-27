import 'dart:io';
import 'package:flutter/material.dart';
import 'package:photo_filter_carousel/widget/filter_selector.dart';

@immutable
class DisplayFilterCarousel extends StatefulWidget {
  final String imagePath;
  const DisplayFilterCarousel({super.key, required this.imagePath});

  @override
  State<DisplayFilterCarousel> createState() => _DisplayFilterCarouselState();
}

class _DisplayFilterCarouselState extends State<DisplayFilterCarousel> {
  final _filters = [
    Colors.white,
    ...List.generate(
      Colors.primaries.length,
      (index) => Colors.primaries[(index * 4) % Colors.primaries.length],
    )
  ];

  final _filterColor = ValueNotifier<Color>(Colors.white);

  void _onFilterChanged(Color value) {
    _filterColor.value = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ValueListenableBuilder(
            valueListenable: _filterColor,
            builder: (context, color, child) {
              return Image.file(
                File(widget.imagePath),
                color: color.withOpacity(0.5),
                colorBlendMode: BlendMode.color,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              );
            },
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: FilterSelector(
              filters: _filters,
              onFilterChanged: _onFilterChanged,
            ),
          ),
        ],
      ),
    );
  }
}
