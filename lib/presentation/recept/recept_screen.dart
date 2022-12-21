import 'package:first/helpers/constants.dart';
import 'package:first/presentation/recept/widgets/steps.dart';
import 'package:flutter/material.dart';

class ReceptScreen extends StatefulWidget {
  const ReceptScreen({
    super.key,
    required this.description,
    required this.listAssets,
    required this.time,
  });
  static const String route = '/recept_screen';

  final String? description;
  final String? listAssets;
  final String? time;

  @override
  State<ReceptScreen> createState() => _ReceptScreenState();
}

class _ReceptScreenState extends State<ReceptScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 17),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 28),
                Text(
                  widget.description ?? '',
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    // widget.listAssets ?? '',
                    Image.asset('assets/images/icon_time.png'),
                    const SizedBox(width: 12),
                    Text(
                      widget.time ?? '45 минут',
                      maxLines: 2,
                      style: const TextStyle(
                        color: colorGreen,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 16),
                Center(
                  child: Image.asset(
                    widget.listAssets ?? 'assets/images/icon_time.png',
                    width: 396,
                    height: 220,
                  ),
                ),
                const SizedBox(height: 22),
                Container(
                  width: 395,
                  height: 330,
                  decoration: BoxDecoration(
                    border: Border.all(width: 3, color: colorBorder),
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(
                    children: [
                      _buildLeftColumn(),
                      _buildRightColumn(),
                    ],
                  ),
                ),
                const SizedBox(height: 19),
                _buildSteps(),
                const SizedBox(height: 20),
                const WidgetSteps(
                  numberSteps: '1',
                  description:
                      'В маленькой кастрюле соедините соевый\nсоус, 6 столовых ложек воды, мёд, сахар, \nизмельчённый чеснок, имбирь \nи лимонный сок.',
                  timeStep: '06:00',
                ),
                const SizedBox(height: 20),
                const WidgetSteps(
                  numberSteps: '2',
                  description:
                      'Поставьте на средний огонь и, помешивая, доведите до лёгкого кипения.',
                  timeStep: '07:00',
                ),
                const SizedBox(height: 20),
                const WidgetSteps(
                  numberSteps: '3',
                  description:
                      'Смешайте оставшуюся воду с крахмалом. Добавьте в кастрюлю и перемешайте.',
                  timeStep: '06:00',
                ),
                const SizedBox(height: 20),
                const WidgetSteps(
                  numberSteps: '4',
                  description:
                      'Готовьте, непрерывно помешивая венчиком, 1 минуту. Снимите с огня и немного остудите.',
                  timeStep: '06:00',
                ),
                const SizedBox(height: 20),
                const WidgetSteps(
                  numberSteps: '5',
                  description:
                      'Смажьте форму маслом и выложите туда рыбу. Полейте её соусом.',
                  timeStep: '06:00',
                ),
                const SizedBox(height: 20),
                const WidgetSteps(
                  numberSteps: '6',
                  description:
                      'Поставьте в разогретую до 200 °C духовку примерно на 15 минут.',
                  timeStep: '15:00',
                ),
                const SizedBox(height: 20),
                const WidgetSteps(
                  numberSteps: '7',
                  description:
                      'Перед подачей полейте соусом из формы и посыпьте кунжутом.',
                  timeStep: '04:00',
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Text _buildSteps() {
    return const Text(
      'Шаги приготовления',
      style: TextStyle(
        color: colorGreenBlack,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _buildRightColumn() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 10,
        top: 15,
        bottom: 18,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            '8 ст. ложек',
            style: styleDescription,
          ),
          SizedBox(height: 10),
          Text(
            '8 ст. ложек',
            style: styleDescription,
          ),
          SizedBox(height: 10),
          Text(
            '3 ст. ложек',
            style: styleDescription,
          ),
          SizedBox(height: 10),
          Text(
            '2 ст. ложки',
            style: styleDescription,
          ),
          SizedBox(height: 11),
          Text(
            '3 зубчика',
            style: styleDescription,
          ),
          SizedBox(height: 11),
          Text(
            '1 ст. ложка',
            style: styleDescription,
          ),
          SizedBox(height: 11),
          Text(
            '1 1/2 ст. ложки',
            style: styleDescription,
          ),
          SizedBox(height: 10),
          Text(
            '1 ст. ложка',
            style: styleDescription,
          ),
          SizedBox(height: 11),
          Text(
            '1 ч. ложка',
            style: styleDescription,
          ),
          SizedBox(height: 11),
          Text(
            '680 г',
            style: styleDescription,
          ),
          SizedBox(height: 11),
          Text(
            'по вкусу',
            style: styleDescription,
          ),
        ],
      ),
    );
  }

  Widget _buildLeftColumn() {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: 8,
        bottom: 18,
      ),
      child: SizedBox(
        width: 240,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Соевый соус',
              style: styleTextOne,
            ),
            SizedBox(height: 10),
            Text(
              'Вода',
              style: styleTextOne,
            ),
            SizedBox(
              height: 9,
            ),
            Text(
              'Мед',
              style: styleTextOne,
            ),
            SizedBox(height: 10),
            Text(
              'Коричневый сахар',
              style: styleTextOne,
            ),
            SizedBox(height: 10),
            Text(
              'Чеснок',
              style: styleTextOne,
            ),
            SizedBox(height: 10),
            Text(
              'Тертый свежий имбирь',
            ),
            SizedBox(height: 10),
            Text(
              'Лимонный сок',
              style: styleTextOne,
            ),
            SizedBox(height: 10),
            Text(
              'Кукурузный крахмал',
              style: styleTextOne,
            ),
            SizedBox(height: 10),
            Text(
              'Растительное масло',
              style: styleTextOne,
            ),
            SizedBox(height: 10),
            Text(
              'Филе лосося или семги',
              style: styleTextOne,
            ),
            SizedBox(height: 10),
            Text(
              'Кунжут',
              style: styleTextOne,
            ),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      actions: [
        Image.asset(
          'assets/images/megafon.png',
          color: Colors.black,
        ),
      ],
      title: const Text(
        'Рецепт',
        style: TextStyle(color: colorGreenBlack),
      ),
      leading: GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(
          Icons.arrow_back_rounded,
          color: Colors.black,
        ),
      ),
    );
  }
}
