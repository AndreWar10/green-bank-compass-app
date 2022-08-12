import 'package:desafio/domain/entities/statement.dart';
import 'package:desafio/presentation/pages/comprovante/comprovante_details_page.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:desafio/presentation/widgets/component/extrato_page/function_card.dart';
import 'package:desafio/data/utils/function_money_converter.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomCardStatement extends StatelessWidget {
  const CustomCardStatement(
      {Key? key, required this.statement, required this.idx})
      : super(key: key);
  final Statement statement;
  final int idx;

  @override
  Widget build(BuildContext context) {
       return Material(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (_) => ComprovanteDetailsPage(id: statement.id),
                fullscreenDialog: true),
          );
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 6, bottom: 6),
          child: Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: isPix(statement.tType)
                ? BoxDecoration(
                    color: BaseColors().getWhiteColor(),
                  )
                : BoxDecoration(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6, left: 30, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              statement.description,
                              style: TextStyle(
                                  fontFamily: 'Khalid',
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400
                              ),
                              softWrap: true,
                              overflow: TextOverflow.visible,
                            ),
                            Spacer(),
                            isPix(statement.tType)
                                ? Container(
                                    decoration: BoxDecoration(
                                      color: BaseColors().getGreenColor(),
                                    ),
                                    width: MediaQuery.of(context).size.width *
                                        0.125,
                                    height: MediaQuery.of(context).size.height *
                                        0.025,
                                    child: Center(
                                      child: Text(
                                        'Pix',
                                        style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold,
                                          color: BaseColors().getWhiteColor(),
                                        ),
                                        softWrap: true,
                                        overflow: TextOverflow.visible,
                                      ),
                                    ),
                                  )
                                : SizedBox(),
                          ],
                        ),
                        //Spacer(), //ocupar o espaço e jogr o Widget abaixo pro final
                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.005),
                        statement.bankName != null
                            ? Row(
                                children: [
                                  Text(
                                    statement.from!,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: BaseColors().getGreyColor(),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    DateFormat("dd/MM")
                                        .format(statement.createdAt),
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: BaseColors().getGreyColor(),
                                    ),
                                  ),
                                ],
                              )
                            : Row(
                                children: [
                                  Text(
                                    statement.to!,
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: BaseColors().getGreyColor(),
                                    ),
                                  ),
                                  Spacer(),
                                  Text(
                                    DateFormat("dd/MM")
                                        .format(statement.createdAt),
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: BaseColors().getGreyColor(),
                                    ),
                                  ),
                                ],
                              ),

                        SizedBox(
                            height: MediaQuery.of(context).size.height * 0.005),
                        isComprovant(statement.tType)
                            ? Text(
                                '-${moneyConverter(statement.amount)}',
                                style: TextStyle(
                                    fontFamily: 'Khalid',
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16),
                              )
                            : Text(
                               moneyConverter(statement.amount),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                    fontSize: 16),
                              ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
