import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});
  final String title,value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: Styles.textStyle24,),
        const Spacer(),
        Text(value,style: Styles.textStyle24,),
      ],
    );
  }
}
