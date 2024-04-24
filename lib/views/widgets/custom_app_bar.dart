import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Text(
            'Notes',
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


