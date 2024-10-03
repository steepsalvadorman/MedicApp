import 'package:flutter/material.dart';

class DoctorButton extends StatelessWidget {
  final String name;
  final VoidCallback? onPressed;
  final Color? backgroundColor; 
  final Color? borderColor; 

  const DoctorButton({
    super.key,
    required this.name,
    this.onPressed,
    this.backgroundColor, 
    this.borderColor, 
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        backgroundColor: backgroundColor ??
            Colors.white, 
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: borderColor != null
              ? BorderSide(
                  color: borderColor!,
                  width: 2, 
                )
              : BorderSide.none, 
        ),
      ),
      child: Text(
        name,
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}
