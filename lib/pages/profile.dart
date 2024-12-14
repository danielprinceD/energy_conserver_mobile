

import 'package:energy_conserver_mobile/app-util.dart';
import 'package:flutter/material.dart';
import '../demo/data.dart';
class ProfilePage1 extends StatelessWidget {
  
  const ProfilePage1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color( AppData.bgColor),
      body: Column(
        children: [
          const Expanded(flex: 2, child: _TopPortion()),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    "Cat Man",
                    style: Theme.of(context)
                        .textTheme.bodyLarge
                        ?.copyWith(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),
                 
                  const SizedBox(height: 16),
                   _ProfileInfoRow()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _ProfileInfoRow extends StatelessWidget {
  
  static int buildingCount = buildings.length;
  static int blockCount = blocks.length;
  static int deviceCount = devices.length;

   _ProfileInfoRow({Key? key}) : super(key: key , );

  final List<ProfileInfoItem> _items = [
    ProfileInfoItem("Buildings", buildingCount ),
    ProfileInfoItem("Blocks", blockCount),
    ProfileInfoItem("Devices", deviceCount),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      constraints: const BoxConstraints(maxWidth: 400),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _items
            .map((item) => Expanded(
                    child: Row(
                  children: [
                    if (_items.indexOf(item) != 0) const VerticalDivider(),
                    Expanded(child: _singleItem(context, item)),
                  ],
                )))
            .toList(),
      ),
    );
  }

  Widget _singleItem(BuildContext context, ProfileInfoItem item) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              item.value.toString(),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          Text(
            item.title,
            style: Theme.of(context).textTheme.bodyLarge,
          )
        ],
      );
}

class ProfileInfoItem {
  final String title;
  final int value;
  const ProfileInfoItem(this.title, this.value);
}

class _TopPortion extends StatelessWidget {
  const _TopPortion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Container(
          margin: const EdgeInsets.only(bottom: 50),
          decoration: const BoxDecoration(
              image: DecorationImage(fit: BoxFit.cover  ,image: NetworkImage( 'https://th.bing.com/th/id/OIG1.wQ7nqzXG6LLji1s3MrOP')),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              )),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            width: 150,
            height: 150,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage('https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp')),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                    child: Container(
                      margin: const EdgeInsets.all(8.0),
                      decoration: const BoxDecoration(
                          color: Colors.green, shape: BoxShape.circle),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
