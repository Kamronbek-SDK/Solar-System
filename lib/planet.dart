import 'package:flutter/material.dart';
import 'package:flutter16/details.dart';

class Planet extends StatelessWidget {
  const Planet({super.key, required this.thing});
  final Item thing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(thing.name, style: const TextStyle(fontSize: 20),),
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: Image.asset("asset/solar/${thing.image}.jpg", fit: BoxFit.cover, width: 200, height: 200,),
            ),
            expandedHeight: 350,
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: 1,
                (context, index) => Stack(
                    children: [
                      Image.asset('asset/solar/universe2.jpg', width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height,fit: BoxFit.cover,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(thing.description),
                      )
                    ]
                )
            )
          )
          //SizedBox(child: Image.asset('asset/solar/universe2.jpg', width: double.infinity, height: double.infinity, fit: BoxFit.cover,)),
        ],
      ),
    );
  }
}
