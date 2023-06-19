import 'package:flutter/material.dart';
import 'package:hadis/constants/theme.dart';
import "package:flutter_svg/flutter_svg.dart";

class Input extends StatelessWidget {
  final bool needicon;
  final bool autofocus;
  final bool obssecure;
  final String? placeholder;
  final TextEditingController? controller;
  final Function()? onTap;
  final Function(String)? onChange;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String iconsy;
  

  const Input({
    this.needicon = false,
    this.autofocus = false,
    this.obssecure = true,
    this.placeholder,
    this.controller,
    this.onTap,
    this.onChange,
    this.prefixIcon,
    this.suffixIcon,
    this.iconsy = "assets/images/pic1.svg",
  });

  @override
  Widget build(BuildContext context) {

    return needicon
        ?
        // needicon = True
        Stack(
            alignment: Alignment.centerLeft,
            children: <Widget>[
              TextField(
                onTap: onTap,
                onChanged: onChange,
                controller: controller,
                autofocus: autofocus,
                style: const TextStyle(height: 1, fontSize: 18.0),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: UIColor.blackgrey.withOpacity(0.1),
                  hintStyle: const TextStyle(
                    color: UIColor.blackgrey,
                  ),
                  suffixIcon: suffixIcon,
                  prefixIcon: prefixIcon,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    borderSide: BorderSide(
                        color: UIColor.blackgrey.withOpacity(0.1),
                        width: 1.0,
                        style: BorderStyle.solid),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    borderSide: BorderSide(
                        color: UIColor.blackgrey.withOpacity(0.1),
                        width: 1.0,
                        style: BorderStyle.solid),
                  ),
                  hintText: placeholder,
                  contentPadding: const EdgeInsets.only(left: 70.0),
                ),
                obscureText: obssecure,
              ),
              Container(
                width: 60,
                height: 60,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: UIColor.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: SvgPicture.asset(iconsy,
                      color: UIColor.white),
                ),
              ),
            ],
          )
        :
        // needicon = False
        TextField(
            onTap: onTap,
            onChanged: onChange,
            controller: controller,
            autofocus: autofocus,
            style: const TextStyle(height: 1, fontSize: 18.0),
            decoration: InputDecoration(
              filled: true,
              fillColor: UIColor.blackgrey.withOpacity(0.1),
              hintStyle: const TextStyle(
                color: UIColor.blackgrey,
              ),
              suffixIcon: suffixIcon,
              prefixIcon: prefixIcon,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0),
                borderSide: BorderSide(
                    color: UIColor.blackgrey.withOpacity(0.1),
                    width: 1.0,
                    style: BorderStyle.solid),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0),
                borderSide: BorderSide(
                    color: UIColor.blackgrey.withOpacity(0.1),
                    width: 1.0,
                    style: BorderStyle.solid),
              ),
              hintText: placeholder,
              contentPadding: const EdgeInsets.only(left: 30.0),
            ),
                obscureText: obssecure,
          );
  }
}
