import 'package:flutter/cupertino.dart';

class SingleChat extends StatefulWidget {
  final Map<String, String>? data;
  const SingleChat({Key? key,required this.data}) : super(key: key);

  @override
  State<SingleChat> createState() => _SingleChatState();
}

class _SingleChatState extends State<SingleChat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(widget.data!["name"]!),
      ),
    );
  }
}
