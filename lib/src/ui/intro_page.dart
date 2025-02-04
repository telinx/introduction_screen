import 'package:flutter/material.dart';
import 'package:introduction_screen/src/model/page_view_model.dart';
import 'package:introduction_screen/src/ui/intro_content.dart';

class IntroPage extends StatelessWidget {
  final PageViewModel page;

  const IntroPage({Key key, @required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: page.decoration.pageColor,
      decoration: page.decoration.boxDecoration,
      child: SafeArea(
        top: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            page.image != null ?
              Expanded(
                flex: page.decoration.imageFlex,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 24.0),
                  child: page.image,
                ),
              )
            :
              Expanded(
                flex: page.decoration.imageFlex,
                child: Container(
                  height: page.imageHeight,
                  padding: const EdgeInsets.only(bottom: 24.0),
                ),
              )
            ,
            if (page.title != null)
              Expanded(
                flex: page.decoration.bodyFlex,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 70.0),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: IntroContent(page: page),
                  ),
                ),
              ),
            if(null != page.footer)
              Container(
                alignment: Alignment.topCenter,
                height: page.footerHeight,
                child: page.footer,
              )
          ],
        ),
      ),
    );
  }
}
