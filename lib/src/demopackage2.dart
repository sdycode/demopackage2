import 'package:flutter/material.dart';

enum Style {
  style1,
  style2,
  style3,
  style4,
  style5,
  style6,
  style7,
  style8,
  style9,
  style10,
  style11
}

class ArtText extends StatefulWidget {
  String yourText;
  Style style;
  double fontsize;
  TextAlign textAlign;

  ArtText(
      {this.yourText = "Your\nText",
      this.style = Style.style1,
      this.fontsize = 45, 
      
      this.textAlign = TextAlign.center
      });

  @override
  State<ArtText> createState() => _ArtTextState();
}

class _ArtTextState extends State<ArtText> {
  @override
  Widget build(BuildContext context) {
    switch (widget.style) {
      case Style.style1:
        return Stack(
          children: [
            Text(
              widget.yourText,
textAlign : widget.textAlign,
              style: TextStyle(
                  color: Colors.amber.shade300,
                  fontSize: widget.fontsize,
                  shadows: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(3, 3),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ]),
            ),
            Text(
              widget.yourText,
textAlign : widget.textAlign,
              style: TextStyle(
                fontSize: widget.fontsize,

                foreground: Paint()
                  ..color = Colors.orange
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 3.0,

                // ..blendMode= BlendMode.colorBurn
              ),
            )
          ],
        );

      case Style.style2:
        return ShaderMask(
          blendMode: BlendMode.srcIn,
          shaderCallback: (Rect bounds) {
            print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
            return LinearGradient(
              colors: [Colors.red, Colors.blue],
              tileMode: TileMode.mirror,
            ).createShader(bounds);
          },
          child: Container(
            margin: EdgeInsets.all(10),
            child: Text(widget.yourText,
textAlign : widget.textAlign,
                overflow: TextOverflow.clip,
                style: TextStyle(
                  fontSize: widget.fontsize,
                )),
          ),
        );

      case Style.style3:
        return Stack(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                widget.yourText,
textAlign : widget.textAlign,
                style: TextStyle(
                  fontSize: widget.fontsize,
                  foreground: Paint()..color = Colors.orange.shade100,
                ),
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return const LinearGradient(
                  colors: [Colors.red, Colors.blue],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(widget.yourText,
textAlign : widget.textAlign,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: widget.fontsize,
                      foreground: Paint()
                        ..color = Colors.orange.shade200
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 6.0,
                    )),
              ),
            )
          ],
        );

      case Style.style4:
        return Stack(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                widget.yourText,
textAlign : widget.textAlign,
                style: TextStyle(
                  fontSize: widget.fontsize,
                  shadows: [
                    BoxShadow(
                        color: Colors.purple,
                        offset: Offset(0, 0),
                        spreadRadius: 12,
                        blurRadius: 12)
                  ],
                ),
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return LinearGradient(
                  colors: [Colors.red, Colors.blue],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(widget.yourText,
textAlign : widget.textAlign,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: widget.fontsize,
                    )),
              ),
            )
          ],
        );

      case Style.style5:
        return Stack(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                widget.yourText,
textAlign : widget.textAlign,
                style: TextStyle(
                  fontSize: widget.fontsize,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        spreadRadius: 3,
                        blurRadius: 3)
                  ],
                  foreground: Paint()
                    ..color = Colors.black
                    ..strokeWidth = 2.0
                    ..strokeJoin = StrokeJoin.round,
                ),
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.orange,
                    Colors.orange.shade400,
                    Colors.orange.shade100
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(
                  widget.yourText,
textAlign : widget.textAlign,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    foreground: Paint(),
                    fontSize: widget.fontsize,
                  ),
                ),
              ),
            )
          ],
        );

      case Style.style6:
        return Stack(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                widget.yourText,
textAlign : widget.textAlign,
                style: TextStyle(
                  fontSize: widget.fontsize,
                  shadows: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        spreadRadius: 4,
                        blurRadius: 4)
                  ],
                ),
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return LinearGradient(
                  colors: [Colors.red, Colors.blue],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(widget.yourText,
textAlign : widget.textAlign,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: widget.fontsize,
                      foreground: Paint(),
                    )),
              ),
            )
          ],
        );

      case Style.style7:
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                widget.yourText,
textAlign : widget.textAlign,
                style: TextStyle(
                  fontSize: widget.fontsize,
                  shadows: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(3, 3),
                        spreadRadius: 4,
                        blurRadius: 4)
                  ],
                ),
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return const LinearGradient(
                  stops: [0, 0.8, 0.95],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.red, Colors.amber, Colors.yellow],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                // padding: EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(widget.yourText,
textAlign : widget.textAlign,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: widget.fontsize,
                        foreground: Paint(),
                      )),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(widget.yourText,
textAlign : widget.textAlign,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontSize: widget.fontsize,
                    foreground: Paint()
                      ..strokeWidth = 3
                      ..color = Colors.black
                      ..style = PaintingStyle.stroke,
                  )),
            )
          ],
        );

      case Style.style8:
        return Stack(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                widget.yourText,
textAlign : widget.textAlign,
                style: TextStyle(
                  fontSize: widget.fontsize,
                  shadows: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(2, 2),
                        spreadRadius: 2,
                        blurRadius: 2)
                  ],
                ),
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return LinearGradient(
                  stops: [0.4, 0.97, 0.98],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.orange.shade200,
                    Colors.orange.shade400,
                    Colors.orange
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                // padding: EdgeInsets.all(15),
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(widget.yourText,
textAlign : widget.textAlign,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontSize: widget.fontsize,
                        foreground: Paint(),
                      )),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(widget.yourText,
textAlign : widget.textAlign,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontSize: widget.fontsize,
                    foreground: Paint()
                      ..strokeWidth = 2
                      ..color = Colors.black
                      ..style = PaintingStyle.stroke,
                  )),
            )
          ],
        );

      case Style.style9:
        return Stack(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                widget.yourText,
textAlign : widget.textAlign,
                style: TextStyle(
                  fontSize: widget.fontsize,
                  shadows: [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(3, 3),
                        spreadRadius: 3,
                        blurRadius: 3)
                  ],
                  foreground: Paint()..color = Colors.white,
                ),
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return LinearGradient(
                  stops: [0.4, 0.97, 0.98],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.brown, Colors.red, Colors.orange],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(widget.yourText,
textAlign : widget.textAlign,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: widget.fontsize,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 5.0,
                    )),
              ),
            )
          ],
        );

      case Style.style10:
        return Stack(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                widget.yourText,
textAlign : widget.textAlign,
                style: TextStyle(
                  fontSize: widget.fontsize,
                  shadows: [
                    BoxShadow(
                        color: Colors.deepPurple,
                        offset: Offset(5, 5),
                        spreadRadius: 5,
                        blurRadius: 5)
                  ],
                  foreground: Paint()
                    ..color = Color.fromARGB(244, 245, 190, 245)
                    ..style = PaintingStyle.fill,
                ),
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return const LinearGradient(
                  stops: [0.4, 0.97],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.purple,
                    Colors.deepPurple,
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(widget.yourText,
textAlign : widget.textAlign,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: widget.fontsize,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 5.0,
                    )),
              ),
            ),
          ],
        );

      case Style.style11:
        return Stack(
          children: [
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return LinearGradient(
                  stops: [0.4, 0.97],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.purple.shade100,
                    Colors.deepPurple.shade200,
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(widget.yourText,
textAlign : widget.textAlign,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: widget.fontsize,
                      foreground: Paint(),
                    )),
              ),
            ),
            ShaderMask(
              blendMode: BlendMode.srcIn,
              shaderCallback: (Rect bounds) {
                print("bounds ${bounds.size.width}  & ${bounds.size.height} ");
                return const LinearGradient(
                  stops: [0.4, 0.97],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.purple,
                    Colors.deepPurple,
                  ],
                  tileMode: TileMode.mirror,
                ).createShader(bounds);
              },
              child: Container(
                margin: EdgeInsets.all(15),
                child: Text(widget.yourText,
textAlign : widget.textAlign,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontSize: widget.fontsize,
                      foreground: Paint()
                        ..style = PaintingStyle.stroke
                        ..strokeWidth = 3.0,
                    )),
              ),
            ),
          ],
        );

      default:
        return Stack(
          children: [
            Text(
              widget.yourText,
textAlign : widget.textAlign,
              style: TextStyle(
                  color: Colors.amber.shade300,
                  fontSize: widget.fontsize,
                  shadows: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(3, 3),
                        spreadRadius: 2,
                        blurRadius: 5)
                  ]),
            ),
            Text(
              widget.yourText,
textAlign : widget.textAlign,
              style: TextStyle(
                fontSize: widget.fontsize,

                foreground: Paint()
                  ..color = Colors.orange
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 3.0,

                // ..blendMode= BlendMode.colorBurn
              ),
            )
          ],
        );
    }
  }
}

