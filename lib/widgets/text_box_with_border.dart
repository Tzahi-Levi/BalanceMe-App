// ================= Text box with an (optional) border widget =================
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:balance_me/global/types.dart';
import 'package:balance_me/global/utils.dart';
import 'package:balance_me/global/constants.dart' as gc;

/// The widget receives the following parameters-
/// controller- to attach to the text, for functions
/// hintText- the text which will tell the user what to type - vanishes on tap
/// hideText-  optional, if you want to hide the text (passwords, for example)
/// labelText- optional, the text which shows in the text box, until tapped, then above it.
/// haveBorder- optional, whether you want to create a border around your text box
/// suffix-optional,the widget that is shown at the end of the text box
/// textBoxHeight-optional, the height of the text box (specified in the height parameter)
/// textBoxSize-optional inner padding in the text box which will increase its size- for longer text
class TextBox extends StatelessWidget {
  const TextBox(this.controller, this._hintText, {this.labelText, this.hideText = false, this.haveBorder = true,
    this.suffix, this.textBoxHeight, this.textBoxSize, this.validatorFunction, this.isNumeric = false, this.languageDirection, Key? key, this.onChanged, this.textAlign}) : super(key: key);

  final TextEditingController controller;
  final String? _hintText;
  final String? labelText;
  final bool hideText;
  final Widget? suffix;
  final bool haveBorder;
  final double? textBoxHeight;
  final EdgeInsetsGeometry? textBoxSize;
  final StringCallbackStringNullable? validatorFunction;
  final VoidCallbackString? onChanged;
  final TextAlign? textAlign;
  final bool isNumeric;
  final String? languageDirection;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: textBoxHeight,
      child: Padding(
        padding: const EdgeInsets.all(gc.paddingBetweenText),
        child: TextFormField(
          controller: controller,
          keyboardType: isNumeric ? TextInputType.number : TextInputType.multiline,
          validator: validatorFunction,
          inputFormatters: isNumeric ? [numberFormatter(false)] : [],
          obscureText: hideText,
          onChanged: onChanged,
          textAlign: textAlign == null ? TextAlign.start : textAlign!,
          textDirection: getTextDirection(languageDirection),
          decoration: InputDecoration(
            contentPadding: textBoxSize,
            hintText: _hintText,
            label: labelText == null ? (_hintText == null ? null : Text(_hintText!)) : Text(labelText!),
            suffixIcon: suffix,
          ),
        ),
      ),
    );
  }
}
