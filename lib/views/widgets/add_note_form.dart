import 'package:flutter/material.dart';
import 'custom_button.dart';
import 'custom_text_field.dart';
class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value) {
              title = value;
            },
            hint: 'title',
          ),
          const SizedBox(
            height: 40,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            maxLines: 5,
            hint: 'content',
          ),
          const SizedBox(
            height: 65,
          ),
          CustomButton(onTap: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
            } else {
              autoValidateMode = AutovalidateMode.always;
              setState(() {});
            }
          }
          ),
        ],
      ),
    );
  }
}
