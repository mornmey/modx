import 'package:flutter/material.dart';

class Expan extends StatefulWidget {
  final String nameS;
  final String nameT;
  final String classT;
  final String age;
  final String device;
  final void Function()? onTap;
  const Expan(
      {Key? key,
      required this.nameS,
      required this.nameT,
      required this.classT,
      required this.age,
      required this.device,
      this.onTap})
      : super(key: key);

  @override
  State<Expan> createState() => _ExpanState();
}

class _ExpanState extends State<Expan> {
  bool _hide = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: _hide ? 15 : 0,
        right: _hide ? 15 : 0,
        top: 10,
      ),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(_hide ? 10 : 0),
            ),
            child: ExpansionTile(
              leading: CircleAvatar(
                radius: 20,
                child: Icon(Icons.supervised_user_circle),
              ),
              title: Text(
                widget.nameT,
              ),
              subtitle: Text("Classroom ${widget.classT}"),
              trailing: Icon(
                _hide ? Icons.chevron_right : Icons.keyboard_arrow_down,
                color: Colors.grey,
              ),
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  child: Column(
                    children: [
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                              child: Text("${widget.nameS}"),
                            ),
                            Flexible(
                              child: Text("${widget.nameS}"),
                            ),
                            Flexible(
                              child: Text("${widget.nameS}"),
                            ),Flexible(
                              child: Text("${widget.nameS}"),
                            ),
                            Flexible(
                              child: Text("${widget.nameS}"),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ],
              onExpansionChanged: (isExpanded) {
                setState(() {
                  _hide = !_hide;
                  widget.onTap;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
