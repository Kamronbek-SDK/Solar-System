import 'package:flutter/material.dart';
import 'package:flutter16/details.dart';
import 'package:gap/gap.dart';

class PlanetItem extends StatelessWidget {
  const PlanetItem({super.key, required this.planet, required this. onClick});
  final Item planet;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          //color: const Color(0xFFdba07b),
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
              onTap: onClick,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Ink(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                   border: Border.all(color: const Color(0xFFdba07b), width: 2)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 140,
                          height: 140,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("asset/solar/${planet.avatar}.jpg"),
                          ),
                        ),
                        const Gap(20),
                        Text(planet.name, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                ),
              ),
            ),
        ),
      ),
    );
  }
}
