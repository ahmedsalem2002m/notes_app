import 'package:flutter/material.dart';

import 'custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16
      ),
      child:Column(
        children: [
          SizedBox(height: 32,),
          CustomTextField(hint: 'title',),
          SizedBox(height: 16,),
          CustomTextField(maxLines: 5,hint: 'content',),

        ],
      ),
    );
  }
}