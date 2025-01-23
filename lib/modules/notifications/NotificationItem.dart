import 'package:flutter/material.dart';
import 'package:mehra_app/shared/components/components.dart';

class NotificationItem extends StatefulWidget {
  final String username;
  final String action;
  final String time;
  final String avatarUrl;

  const NotificationItem({
    Key? key,
    required this.username,
    required this.action,
    required this.time,
    required this.avatarUrl,
  }) : super(key: key);

  @override
  _NotificationItemState createState() => _NotificationItemState();
}

class _NotificationItemState extends State<NotificationItem> {
  bool _isFollowed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(widget.avatarUrl),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${widget.username} ${widget.action}',
                    style: TextStyle(fontSize: 20), // تكبير الخط هنا
                  ),
                  Text(
                    widget.time,
                    style: TextStyle(color: Colors.grey, fontSize: 16), // تكبير الخط هنا
                  ),
                ],
              ),
            ],
          ),
          GradientButton(
            onPressed: () {},
            text: 'رد المتابعة ',
            width: 101,
            height: 38,
          ),
        ],
      ),
    );
  }
}