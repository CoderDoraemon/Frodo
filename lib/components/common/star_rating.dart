import 'package:flutter/material.dart';

class LDStarRating extends StatefulWidget {
  // 当前分数
  final double rating;

  // 最大分数
  final double maxRating;

  // 多少个星星
  final int count;

  // 星星尺寸
  final double size;

  // 未选中时图标的颜色
  final Color unSelectedColor;

  // 选中时图标的颜色
  final Color selectedColor;

  // 未选中时的图标
  final Widget unSelectedImage;

  // 选中时的图标
  final Widget selectedImage;

  LDStarRating({
    @required this.rating,
    this.maxRating = 10,
    this.count = 5,
    this.size = 30,
    this.unSelectedColor = const Color(0xffbbbbbb),
    this.selectedColor = const Color(0xffff0000),
    Widget unSelectedImage,
    Widget selectedImage
  }): unSelectedImage = unSelectedImage ?? Icon(Icons.star_border, color: unSelectedColor, size: size,),
        selectedImage = selectedImage ?? Icon(Icons.star, color: selectedColor, size: size,);

  @override
  _LDStarRatingState createState() => _LDStarRatingState();
}

class _LDStarRatingState extends State<LDStarRating> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.min,
            children: buildUnselectedStar(),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: buildSelectedStar(),
          )
        ],
      ),
    );
  }

  List<Widget> buildUnselectedStar() {
    return List.generate(5, (index) {
      return Icon(Icons.star_border, color: widget.unSelectedColor, size: widget.size,);
    });
  }

  List<Widget> buildSelectedStar() {

    List<Widget> stars = [];
    final star = widget.selectedImage;

    // 满星个数
    double oneValue = widget.maxRating / widget.count;
    int fullNum = (widget.rating / oneValue).floor();

    for (int i = 0; i < fullNum; i++) {
      stars.add(star);
    }

    // 非满星个数
    double leftWidth = (widget.rating / oneValue - fullNum) * widget.size;

    final halfStar = ClipRect(
      clipper: LDClipperStar(leftWidth),
      child: star,
    );

    stars.add(halfStar);

    if (stars.length > widget.count) {
      stars.sublist(0, widget.count);
    }

    return stars;
  }
}

class LDClipperStar extends CustomClipper<Rect> {

  double width;

  LDClipperStar(this.width);

  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return Rect.fromLTRB(0, 0, width, size.height);
  }

  @override
  bool shouldReclip(LDClipperStar oldClipper) {
    // TODO: implement shouldReclip
    return oldClipper.width != width;
  }
}


