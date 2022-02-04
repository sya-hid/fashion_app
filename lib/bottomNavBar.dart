import 'package:fashion_app/theme.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: colorUngu,
            ),
            child: IconButton(
              icon: Icon(
                Icons.home_rounded,
                color: colorPutih,
              ),
              onPressed: () {},
            ),
          ),
          IconButton(
            icon: Icon(
              Icons.favorite_outline_rounded,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.chat_outlined,
              color: Colors.grey,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.person_outline_rounded,
              color: Colors.grey,
            ),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
