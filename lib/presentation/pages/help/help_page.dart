import 'package:desafio/presentation/widgets/component/help_page/avaliacao_widget.dart';
import 'package:desafio/presentation/widgets/component/help_page/custom_list_tile.dart';
import 'package:desafio/presentation/widgets/component/help_page/help_divider.dart';
import 'package:desafio/presentation/widgets/component/help_page/input_duvida_widget.dart';
import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Página de Ajuda'),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: InputDuvidaWidget(),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Como você avalia a Página de Ajuda?',
                        style:
                            TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        AvaliacaoWidget(
                          icon: Icons.warning_amber,
                          reacao: 'Péssimo',
                        ),
                        Spacer(),
                        AvaliacaoWidget(
                          icon: Icons.back_hand_outlined,
                          reacao: 'Ruim',
                        ),
                        Spacer(),
                        AvaliacaoWidget(
                          icon: Icons.tag_faces_sharp,
                          reacao: 'Bom',
                        ),
                        Spacer(),
                        AvaliacaoWidget(
                          icon: Icons.favorite_border,
                          reacao: 'Perfeito',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 8, right: 8),
                child: ListView(
                  shrinkWrap: true,
                  children: const [
                    CustomListTile(
                      title: 'Pix',
                      subtitle: 'Conheça o novo meio de pagamento.',
                    ),
                    HelpDivider(),
                    CustomListTile(
                      title: 'Coronavírus',
                      subtitle: 'Dúvidas sobre o Coronavírus? Veja aqui.',
                    ),
                    HelpDivider(),
                    CustomListTile(
                      title: 'Novidades',
                      subtitle: 'Tudo sobre o GreenBank e nossos produtos.',
                    ),
                    HelpDivider(),
                    CustomListTile(
                      title: 'Conta',
                      subtitle: 'Conheça tudo sobre sua conta digital.',
                    ),
                    HelpDivider(),
                  ],
                ),
              ),
            
            ],
          ),
        ),
      ),
    );
  }
}


