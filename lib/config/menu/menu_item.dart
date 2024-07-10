import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
  });
}

 const appMenuItems = <MenuItem>[
    MenuItem(
      title: 'Botones', 
      subtitle: 'Varios botones en flutter', 
      link: '/buttons', 
      icon: Icons.smart_button_outlined
    ),

    MenuItem(
      title: 'Tarjetas', 
      subtitle: 'Un contenedor estilizado', 
      link: '/cards', 
      icon: Icons.add_card_outlined
    ),

    MenuItem(
      title: 'Progress Indicators', 
      subtitle: 'Progresos generales y controlados', 
      link: '/progress', 
      icon: Icons.refresh_outlined
    ),

    MenuItem(
      title: 'Snackbars y dialogos', 
      subtitle: 'Indicadores en pantalla', 
      link: '/snackbar', 
      icon: Icons.message_outlined
    ),

    MenuItem(
      title: 'Animated Container', 
      subtitle: 'Stateful widget animation', 
      link: '/animated', 
      icon: Icons.animation
    ),

  ];