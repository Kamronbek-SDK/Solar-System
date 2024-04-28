import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter16/details.dart';
import 'package:flutter16/planet.dart';
import 'package:flutter16/planet_item.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: const Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        //backgroundColor: const Color(0xFFdba07b),
        title: const Text('Astronomy', style: TextStyle(fontSize: 20),),
      ),
      body: Stack(
        children: [
          Image.asset('asset/solar/universe2.jpg', width: double.infinity, height: double.infinity, fit: BoxFit.cover,),
          ListView.builder(
              itemCount: planets.length,
              itemBuilder: (context, index) => PlanetItem(planet: planets[index], onClick: (){
                Navigator.of(context).push(CupertinoPageRoute(builder: (context) => Planet(thing: planets[index],)));
              })
          ),

        ],
      ),
    );
  }
}
