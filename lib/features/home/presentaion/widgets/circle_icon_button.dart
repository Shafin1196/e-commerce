import 'package:flutter/material.dart';

class CircleIconButton extends StatelessWidget {
   const CircleIconButton({
    super.key,
    required this.icon,
    required this.onTap,
  });
  final IconData icon ;
  final VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey.shade200,
      child: IconButton(
    
        onPressed: onTap,
        icon:  Icon(icon,color: Colors.grey.shade500,size: 20,),
      ),
    );
  }
}