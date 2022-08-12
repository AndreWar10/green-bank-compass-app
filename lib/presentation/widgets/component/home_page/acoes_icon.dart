import 'package:desafio/presentation/pages/cobranca/cobrar_page.dart';
import 'package:desafio/presentation/pages/depositar/deposito_page.dart';
import 'package:desafio/presentation/pages/doacao/doacao_page.dart';
import 'package:desafio/presentation/pages/investimento/investir_page.dart';
import 'package:desafio/presentation/pages/pagamento/pagamento_page.dart';
import 'package:desafio/presentation/pages/pix/area_pix_page.dart';
import 'package:desafio/presentation/pages/recarga/recarga_page.dart';
import 'package:desafio/presentation/pages/transferencia/transferencia_page.dart';
import 'package:desafio/presentation/widgets/component/home_page/acao_icon.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class AcoesIcon extends StatelessWidget {
  const AcoesIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            AcaoIcon(
              icon: Icons.pix_outlined,
              widget: AreaPixPage(),
              name: 'Área Pix',
              isFirst: true,
            ),
            AcaoIcon(
              icon: MdiIcons.barcode,
              widget: PagamentoPage(),
              name: 'Pagar',
            ),
            AcaoIcon(
              icon: Icons.arrow_upward_outlined,
              widget: TransferenciaPage(),
              name: 'Transferir',
            ),
            AcaoIcon(
              icon: Icons.arrow_downward_outlined,
              widget: DepositoPage(),
              name: 'Depositar',
            ),
            AcaoIcon(
              icon: Icons.phone_android,
              widget: RecargaPage(),
              name: 'Recarga',
            ),
            AcaoIcon(
              icon: Icons.chat_outlined,
              widget: CobrarPage(),
              name: 'Cobrar',
            ),
            AcaoIcon(
              icon: MdiIcons.heartOutline,
              widget: DoacaoPage(),
              name: 'Doação',
            ),
            AcaoIcon(
              icon: MdiIcons.finance,
              widget: InvestimentoPage(),
              name: 'Investir',
            ),
          ],
        ),
      ),
    );
  }
}
