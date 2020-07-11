import 'package:Frodo/views/details/detail.dart';
import 'package:flutter/material.dart';

class LDGroupContent extends StatefulWidget {
  @override
  _LDGroupContentState createState() => _LDGroupContentState();
}

class _LDGroupContentState extends State<LDGroupContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 1.2),
          itemCount: 20,
          itemBuilder: (ctx, index) {
            final imageUrl = "https://picsum.photos/200/300?random=$index";
            return GestureDetector(
                onTap: () {
//                Navigator.of(context).pushNamed(LDDetail.routerName, arguments: imageUrl);
                  Navigator.of(context).push(PageRouteBuilder(
                      pageBuilder: (ctx, animation, animation2) {
                    return FadeTransition(
                      opacity: animation,
                      child: LDDetail(imageUrl),
                    );
                  }));
                },
                child: Hero(
                  tag: imageUrl,
                  child: Image.network(
                    imageUrl,
                    fit: BoxFit.fill,
                  ),
                ));
          }),
    );
  }
}
