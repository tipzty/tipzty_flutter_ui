import 'package:flutter/material.dart';

class PopupMenuOption extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      icon: Icon(
        Icons.more_vert_rounded,
        color: Colors.grey,
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text("Compartir"),
          
        ),
        PopupMenuItem(
          value: 2,
          child: Text("Copiar enlace"),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("Ver  perfil"),
        ),
        PopupMenuItem(
          value: 2,
          child: Text("Reportar"),
          
        ),
      ],
    );
  }
}
