import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.all(20),
      separatorBuilder: (context, index) {
        return Container(
          height: 10,
        );
      },
      itemCount: 10,
      itemBuilder: (context, index) => ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset("assets/1st.png"),
      ),
    );
  }
}
