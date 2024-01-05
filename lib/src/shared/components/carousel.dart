import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel(
      {super.key,
      required this.items,
      this.height = 200,
      this.viewportFraction = 1,
      this.initialPage = 0});

  final List<Widget> items;
  final double height;
  final double viewportFraction;
  final int initialPage;

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  late PageController _pageController;
  int activePage = 1;

  @override
  void initState() {
    super.initState();
    setState(() {
      activePage = widget.initialPage;
    });
    _pageController = PageController(
        viewportFraction: widget.viewportFraction,
        initialPage: widget.initialPage);
  }

  @override
  Widget build(BuildContext context) {
    final colorSchemes = Theme.of(context).colorScheme;
    return Column(
      children: [
        Container(
          height: widget.height,
          child: PageView.builder(
              controller: _pageController,
              itemCount: widget.items.length,
              pageSnapping: true,
              onPageChanged: (page) {
                setState(() {
                  activePage = page;
                });
              },
              itemBuilder: (context, index) {
                return Container(
                    margin: const EdgeInsets.all(3),
                    child: widget.items[index]);
              }),
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List<Widget>.generate(widget.items.length, (index) {
              return Container(
                margin: const EdgeInsets.all(3),
                width: 6,
                height: 6,
                decoration: BoxDecoration(
                    color: activePage == index
                        ? colorSchemes.primary
                        : colorSchemes.secondary,
                    shape: BoxShape.circle),
              );
            }))
      ],
    );
  }
}
