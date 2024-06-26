import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Customappbar extends StatefulWidget implements PreferredSizeWidget {
  const Customappbar({super.key, required this.apptext});
  final String apptext;

  @override
  State<Customappbar> createState() => _CustomappbarState();

  @override

  Size get preferredSize =>Size.fromHeight(150);
}

class _CustomappbarState extends State<Customappbar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(widget.apptext ,style: GoogleFonts.abyssinicaSil(fontWeight: FontWeight.bold),),
      centerTitle: true,
    );
  }
}
