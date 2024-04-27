import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.label});
final String? label;
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
            '' ,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 30,

          ),
        ),
        Spacer(),
        CustomSearchIcon(),
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


