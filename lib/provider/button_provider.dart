import 'package:flutter/material.dart';

class ButtonProvider extends ChangeNotifier {
  bool _isPressed = false;

  bool get isPressed => _isPressed;

  void setPressed(bool value) {
    _isPressed = value;
    notifyListeners();
  }
}
// import 'package:flutter/material.dart';
// import 'package:carcraft/constants/constants.dart';
// import 'package:go_router/go_router.dart';
// import 'package:provider/provider.dart';
// import 'button_provider.dart';

// // Функция для создания настраиваемой кнопки с текстом и навигацией с эффектом нажатия
// Widget buildButton(
//   BuildContext context, {
//   required String text,
//   required String page,
// }) {
//   return ChangeNotifierProvider(
//     create: (_) => ButtonProvider(),
//     child: ColorChangingButton(
//       text: text,
//       page: page,
//     ),
//   );
// }

// class ColorChangingButton extends StatelessWidget {
//   final String text;
//   final String page;

//   const ColorChangingButton({
//     required this.text,
//     required this.page,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final provider = Provider.of<ButtonProvider>(context);

//     return GestureDetector(
//       onTapDown: (_) => provider.setPressed(true),
//       onTapUp: (_) {
//         provider.setPressed(false);
//         context.go(page);
//       },
//       onTapCancel: () => provider.setPressed(false),
//       child: AnimatedContainer(
//         duration: const Duration(milliseconds: 200),
//         decoration: BoxDecoration(
//           color: provider.isPressed ? greenPhone : grayBTN,
//           borderRadius: BorderRadius.circular(5.0),
//         ),
//         height: 55.0,
//         alignment: Alignment.center,
//         child: Text(
//           text,
//           style: TextStyle(
//             color: provider.isPressed ? white : grayBTNFont,
//           ),
//         ),
//       ),
//     );
//   }
// }
