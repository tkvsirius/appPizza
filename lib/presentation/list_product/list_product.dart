import 'package:first/DTO/transfer_data_product_dto.dart';
import 'package:first/helpers/constants.dart';
import 'package:first/presentation/recept/recept_screen.dart';
import 'package:flutter/material.dart';

List<String> listAssets = [
  'assets/images/one.png',
  'assets/images/two.png',
  'assets/images/three.png',
  'assets/images/four.png',
  'assets/images/five.png',
  'assets/images/six.png',
  'assets/images/seven.png',
];

List<String> listDescription = [
  'Лосось в соусе терияки',
  'Поке боул с сыром тофу',
  'Стейк из говядины по грузински',
  'Тосты с голубикой и бананом,',
  'Паста с морепродуктами',
  'Бургер с двумя котлетами',
  'Пицца Маргарита домашняя',
];

List<String> listTime = [
  '45 минут',
  '30 минут',
  '1 час 15 минут',
  '45 минут',
  '25 минут',
  '1 час',
  '25 минут',
];

class ListProduct extends StatelessWidget {
  const ListProduct({
    Key? key,
    required this.listAssets,
    required this.description,
    required this.time,
  }) : super(key: key);

  final List<String> listAssets;
  final List<String> description;
  final List<String> time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(height: 15),
          itemCount: listAssets.length,
          itemBuilder: (context, index) {
            // final arguments = ItemDataDTO(
            //   description: description[index],
            //   image: listAssets[index],
            //   time: time[index],
            // );
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ReceptScreen(
                      description: description[index],
                      listAssets: listAssets[index],
                      time: time[index],
                    ),
                  ),
                );
                // Navigator.of(context)
                //     .pushNamed(ReceptScreen.route, arguments: arguments);
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Row(
                  children: <Widget>[
                    _buildImage(index),
                    const SizedBox(width: 16),
                    _buildDescriptionAndTime(context, index)
                  ],
                ),
              ),
            );
          }),
    );
  }

  Image _buildImage(int index) => Image.asset(listAssets[index]);

  Widget _buildDescriptionAndTime(BuildContext context, int index) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.45,
            child: Text(
              listDescription[index].toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              Image.asset('assets/images/icon_time.png'),
              const SizedBox(width: 12),
              Text(
                listTime[index],
                maxLines: 2,
                style: const TextStyle(
                  color: colorGreen,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
