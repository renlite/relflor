import 'package:flutter/rendering.dart';
import 'package:flutter/material.dart' show Colors;
import 'app_service.dart';
import 'package:renlite/foundation.dart';
import 'package:renlite_objects/rendering.dart';

class Detail extends RenderProxyBox {
  Detail(RenliteService service) {
    AppService app = service as AppService;
    this.child = RenderPositionedBox(
        alignment: Alignment.center,
        child: RenliteSimpleButton(
            key: "DetailButton",
            decoration: BoxDecoration(color: Colors.deepPurple),
            onTab: app.onTab,
            child: RenderSizedOverflowBox(
                requestedSize: Size(400.0, 400.0),
                child: RenderParagraph(
                    TextSpan(
                        text: "Goto Master",
                        style: TextStyle(color: Colors.white, fontSize: 25.0)),
                    textDirection: TextDirection.ltr))));
  }
}
