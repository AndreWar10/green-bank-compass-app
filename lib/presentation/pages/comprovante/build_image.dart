import 'package:desafio/domain/entities/detailStatement.dart';
import 'package:desafio/presentation/widgets/component/comprovante_details_page/custom_divider.dart';
import 'package:desafio/presentation/widgets/component/comprovante_details_page/custom_row.dart';
import 'package:desafio/data/utils/function_money_converter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

buildImage(context, DetStatement value) {
  return Stack(
    alignment: AlignmentDirectional.topStart,
    children: [
      Container(
        decoration: BoxDecoration(color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, right: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomRow(
                cabecalho: 'Comprovante',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              CustomDivider(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              CustomRow(
                cabecalho: 'Tipo de movimentação',
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              CustomRow(
                  cabecalho: value.description,
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomRow(
                  cabecalho: 'Valor',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              CustomRow(
                  cabecalho: moneyConverter(value.amount),
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomRow(
                  cabecalho: 'Recebedor',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              value.to != null
                  ? CustomRow(
                      cabecalho: value.to!,
                      fontSize: 20,
                      fontWeight: FontWeight.normal)
                  : CustomRow(
                      cabecalho: value.from!,
                      fontSize: 20,
                      fontWeight: FontWeight.normal),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomRow(
                  cabecalho: 'Instituição Bancária',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              CustomRow(
                  cabecalho: value.tType,
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomRow(
                  cabecalho: 'Data/Hora',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              CustomRow(
                  cabecalho:
                      DateFormat('dd/MM/yyyy - hh:mm').format(value.createdAt),
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
              SizedBox(height: MediaQuery.of(context).size.height * 0.02),
              CustomRow(
                  cabecalho: 'Autenticação',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              CustomRow(
                  cabecalho: value.authentication,
                  fontSize: 20,
                  fontWeight: FontWeight.normal),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            ],
          ),
        ),
      ),
    ],
  );
}

// class CustomSB extends StatelessWidget {
//   const CustomSB({
//     Key? key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(height: MediaQuery.of(context).size.height * 0.005);
//   }
// }
