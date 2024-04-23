import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Offer(
          title: "My great offer",
          description: "Buy 1 Get 1 free",
        ),
        Offer(
          title: "Holiday offer",
          description: "30% off for selected items",
        ),
        Offer(
          title: "New year offer",
          description: "Special discounts",
        ),
        Offer(
          title: "My great offer",
          description: "Buy 1 Get 1 free",
        ),
        Offer(
          title: "Holiday offer",
          description: "30% off for selected items",
        ),
        Offer(
          title: "New year offer",
          description: "Special discounts",
        ),
      ],
    );
  }
}

class Offer extends StatelessWidget {
  // Properties
  final String title;
  final String description;

  const Offer({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: Colors.amber.shade50,
          elevation: 17,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "images/background.png",
              ),
            )),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Container(
                    color: Colors.amber.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(title,
                          style: Theme.of(context).textTheme.headlineMedium),
                    ),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                      child: Container(
                    color: Colors.amber.shade50,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(description,
                          style: Theme.of(context).textTheme.headlineSmall),
                    ),
                  )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
