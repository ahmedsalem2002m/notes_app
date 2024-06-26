import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap,  this.isLoading=false});

  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 24),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child:  Center(
            child: isLoading ?  const SizedBox(
              height: 28,
              width: 28,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ):const Text(
              'Add',
              style: TextStyle(
                  fontSize:22,
                  color: Colors.black
              ),
            ),
          ),
        ),
      ),
    );
  }
}