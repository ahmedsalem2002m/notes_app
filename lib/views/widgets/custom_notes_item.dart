import 'package:flutter/material.dart';


class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 18
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color:const Color(0xffFFCC80),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title:  const Text(
              'Flutter Tips',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),
            ),
            subtitle : Padding(
              padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 24
              ),
              child: Text(
                'Ahmed Salem Mohamed Ahmed Salem',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Colors.black.withOpacity(.3),
                ),
              ),
            ),
            trailing:IconButton(
              onPressed: (){

              },
              icon:  const Icon(
                  size: 35,
                  color: Colors.black,
                  Icons.delete
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
                right: 35
            ),
            child: Text(
              'May 21,2024',
              style: TextStyle(
                  color: Colors.black.withOpacity(.3),
                  fontSize: 16
              ),
            ),
          )
        ],
      ),
    );
  }
}