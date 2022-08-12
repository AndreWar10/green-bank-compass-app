// import 'package:desafio/widgets/component/base_color_pages/base_colors.dart';
// import 'package:desafio/widgets/component/home_page/investimento.dart';
// import 'package:desafio/widgets/component/home_page/seguro_area.dart';
// import 'package:desafio/widgets/component/home_page/seguro_cel_area.dart';
// import 'package:flutter/material.dart';

// class PerfilPage extends StatelessWidget {
//   const PerfilPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: BaseColors().getWhiteColor(),
//       child: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               InvestimentoArea(
//                 crossAxixColumn: CrossAxisAlignment.start,
//                 margin: EdgeInsets.symmetric(horizontal: 20),
//               ),
//               SeguroVidaArea(
//                 crossAxixColumn: CrossAxisAlignment.start,
//                 margin: EdgeInsets.symmetric(horizontal: 20),
//               ),
//               SeguroCelArea(
//                 mainAxisColumn: MainAxisAlignment.center,
//                 crossAxixColumn: CrossAxisAlignment.center,
//                 colorBox: BaseColors().getGreyLigthColor(),
//                 padding: EdgeInsets.all(20),
//                 margin:
//                     EdgeInsets.only(left: 20, top: 10, bottom: 20, right: 20),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
