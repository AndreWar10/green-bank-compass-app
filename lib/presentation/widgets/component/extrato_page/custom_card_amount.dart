import 'package:desafio/data/utils/function_money_converter.dart';
import 'package:desafio/presentation/injection.dart';
import 'package:desafio/presentation/bloc/amount/amount_bloc.dart';
import 'package:desafio/presentation/bloc/amount/amount_event.dart';
import 'package:desafio/presentation/bloc/amount/amount_state.dart';
import 'package:desafio/presentation/widgets/component/base_color_pages/base_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomCardAmount extends StatefulWidget {
  const CustomCardAmount({Key? key}) : super(key: key);

  @override
  State<CustomCardAmount> createState() => _CustomCardAmountState();
}

class _CustomCardAmountState extends State<CustomCardAmount>{

  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return AmountBlocWidget();
  }
}

class AmountBlocWidget extends StatefulWidget {
 const AmountBlocWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AmountBlocWidget> createState() => _AmountBlocWidgetState();
}

class _AmountBlocWidgetState extends State<AmountBlocWidget> with AutomaticKeepAliveClientMixin{
  bool _showSaldo = false;


  @override
  // ignore: must_call_super
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 100,
          //MediaQuery.of(context).size.height * 0.14,
          width: MediaQuery.of(context).size.width,
          child: Card(
            color: BaseColors().getWhiteColor(),
            elevation: 0,
            shape: RoundedRectangleBorder(),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Seu saldo  ',
                        style: TextStyle(fontSize: 18),
                      ),
                      GestureDetector(
                        child: Icon(
                          _showSaldo == false
                              ? Icons.visibility_off
                               :Icons.visibility,
                          color: BaseColors().getGreenColor(),
                        ),
                        onTap: () {
                          setState(
                            () {
                              _showSaldo = !_showSaldo;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  Padding(padding: EdgeInsets.all(3)),
                  Row(
                    children: [
                      BlocBuilder(
                        bloc: getIt.get<AmountBloc>()
                          ..add(
                            FetchAmount(),
                          ),
                        builder: (context, state) {
                          if (state is AmountHasData) {
                            return _showSaldo
                                ? Text(
                                    moneyConverter(state.result.amount),
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: BaseColors().getGreenColor(),
                                    ),
                                  )
                                : Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        1, 12, 4, 4),
                                    child: Container(
                                      height: 6,
                                      //MediaQuery.of(context).size.height * 0.006,
                                      width: MediaQuery.of(context).size.width * 0.38,
                                      color: BaseColors().getGreenColor(),
                                    ),
                                  );
                          } else if (state is AmountIsError) {
                            return const Center(
                              child: Text('Error'),
                            );
                          } else {
                            return const Center(
                              child: Text(''),
                            );
                          }
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
  
  @override
  final bool wantKeepAlive = true;
}
