import 'package:flutter/material.dart';

import 'CustomScrollPhysics.dart';

class CustomPage extends StatefulWidget {
  const CustomPage({super.key});

  @override
  State<CustomPage> createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  ScrollController _scrollController = ScrollController();
  bool _isScrolling = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_isScrolling) return;

    double offset = _scrollController.offset;
    double screenHeight = MediaQuery.of(context).size.height;

    if (offset > 50) {
      // Scroll down to the next item
      _scrollTo(screenHeight * ((_scrollController.position.pixels / screenHeight).ceil()));
    } else if (offset < -50) {
      // Scroll up to the previous item
      _scrollTo(screenHeight * ((_scrollController.position.pixels / screenHeight).floor() - 1));
    }
  }
  void _scrollTo(double offset) {
    setState(() {
      _isScrolling = true;
    });

    Future.delayed(Duration.zero).whenComplete(() {

    _scrollController.animateTo(
      offset,
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    ).then((_) {
      setState(() {
        _isScrolling = false;
      });
    });
    },);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onVerticalDragUpdate: _isScrolling ? (_) {} : null,
        child: CustomScrollView(
          controller: _scrollController,
          physics: _isScrolling ? NeverScrollableScrollPhysics() : CustomScrollPhysics(),
          slivers: [
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                  return Container(
                    height: MediaQuery.of(context).size.height,
                    child: Center(child: Text('Item $index')),
                  );
                },
                childCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }

}
