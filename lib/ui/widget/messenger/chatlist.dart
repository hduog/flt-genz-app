import 'package:flutter/material.dart';

class ChatList extends StatelessWidget {
  final VoidCallback onTap;

  const ChatList({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,

      splashColor: Colors.grey.withOpacity(1),
      highlightColor: Colors.grey.withOpacity(1),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        child: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            radius: 27,
            backgroundImage: AssetImage('assets/images/quote.png'),
          ),
          title: Text(
            "Nguyễn Lê Hữu Duy",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            "Chào cáo bạn Nguyễn ahf áuhcaf thânsf tháinasf f àhaifnfasv fhaisfnasm ầihsfkasjfbifbasjbf fabufdasba fhfaibfabfufb a",
            softWrap: true,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "10:20",
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(height: 4),
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '1',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
