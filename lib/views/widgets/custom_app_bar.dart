import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key,  required this.title, required this.icon});
final String title;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
            title ,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,

          ),
        ),
        const Spacer(),
        CustomSearchIcon(icon: icon,),
        // IconButton(
        //     onPressed: (){
        //
        //     },
        //     icon: Icon(
        //       Icons.search,
        //       size: 35,
        //     )
        // )
      ],
    );
  }
}


