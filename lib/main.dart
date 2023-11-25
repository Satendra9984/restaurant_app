import 'package:flutter/material.dart';
import 'package:foodmon/widgets/ui/filled_icon_button.dart';

void main() {
  runApp(const Foodmon());
}

class Foodmon extends StatefulWidget {
  const Foodmon({super.key});

  @override
  State<Foodmon> createState() => _FoodmonState();
}

class _FoodmonState extends State<Foodmon> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Foodmon',
        debugShowCheckedModeBanner: false,
        home: CartScreen());
  }
}

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final tabItems = ["Recommended", "Combos", "Regular Burgers"];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/banner.jpg',
                    ),
                    fit: BoxFit.cover),
              ),
              margin: EdgeInsets.zero,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.3),
                          Colors.black.withOpacity(0),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 20,
                              ),
                              FilledIconButton(
                                  onPressed: () {},
                                  icon: Icons.arrow_back_ios_new),
                            ],
                          ),
                          Row(
                            children: [
                              FilledIconButton(
                                  onPressed: () {}, icon: Icons.search),
                              const SizedBox(
                                width: 20,
                              ),
                              FilledIconButton(
                                  onPressed: () {}, icon: Icons.share),
                              const SizedBox(
                                width: 20,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Amerika Foods',
                                  style: TextStyle(
                                      fontSize: 26,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'American, Fast Foods, Burgers',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            InkWell(
                                onTap: () {},
                                child: Container(
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey.shade300,
                                          width: 1),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Icon(
                                      Icons.favorite_border,
                                      size: 23,
                                    )))
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Row(
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16),
                                )
                              ],
                            ),
                            SizedBox(width: 30),
                            Row(
                              children: [
                                Icon(Icons.reviews_sharp,
                                    color: Colors.blueGrey),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('1k+ reviews',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16))
                              ],
                            ),
                            SizedBox(width: 30),
                            Row(
                              children: [
                                Icon(Icons.timer_outlined,
                                    color: Colors.blueGrey),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('5 mins',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16))
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Divider(
                          thickness: 1,
                        )
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  color: Colors.grey.withOpacity(0.5)))),
                      alignment: Alignment.bottomCenter,
                      height: 40,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: tabItems.length,
                        itemBuilder: (_, i) => Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: i == 0
                                          ? Colors.green
                                          : Colors.transparent))),
                          alignment: Alignment.bottomLeft,
                          margin: const EdgeInsets.only(right: 30, bottom: 0),
                          padding: const EdgeInsets.only(bottom: 7),
                          child: Text(
                            tabItems[i],
                            style: TextStyle(
                                color: i == 0 ? Colors.green : Colors.grey,
                                fontSize: 17,
                                fontWeight:
                                    i == 0 ? FontWeight.w600 : FontWeight.w400),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
