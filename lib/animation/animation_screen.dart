import 'package:cai4_swd8_g1/components/fav_icon_widget.dart';
import 'package:flutter/material.dart';

// class AnimationScreen extends StatefulWidget {
//   const AnimationScreen({super.key});

//   @override
//   State<AnimationScreen> createState() => _AnimationScreenState();
// }

// class _AnimationScreenState extends State<AnimationScreen>
//     with SingleTickerProviderStateMixin {
//   late AnimationController animController;
//   late Animation<double> sizeAnim;
//   late Animation<Color?> colorAnim;

//   @override
//   void initState() {
//     animController = AnimationController(
//       vsync: this,
//       duration: Duration(milliseconds: 400),
//     );

//     // sizeAnim = Tween<double>(begin: 40, end: 60).animate(animController);

//     sizeAnim = TweenSequence<double>([
//       TweenSequenceItem(tween: Tween<double>(begin: 40, end: 60), weight: 50),

//       TweenSequenceItem(tween: Tween<double>(begin: 60, end: 40), weight: 50),
//     ]).animate(animController);

//     colorAnim = ColorTween(
//       begin: Colors.grey,
//       end: Colors.red,
//     ).animate(animController);

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("Animation")),
//       body: Center(
//         child: IconButton(
//           onPressed: () {
//             if (animController.isCompleted) {
//               animController.reverse();
//             } else {
//               animController.forward();
//             }
//           },
//           icon: AnimatedBuilder(
//             animation: sizeAnim,
//             builder: (context, child) {
//               return AnimatedBuilder(
//                 animation: colorAnim,
//                 builder: (context, child) {
//                   return Icon(
//                     Icons.favorite,
//                     size: sizeAnim.value,
//                     color: colorAnim.value,
//                   );
//                 },
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:cai4_swd8_g1/models/product_model.dart';
// import 'package:flutter/material.dart';

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        Animation2Screen(item: products[index]),
                  ),
                );
              },
              leading: Hero(
                tag: products[index].name, // can't be duplicated
                child: Image.network(
                  products[index].image,
                  width: 60,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(products[index].name),
              trailing: FavIconWidget(),
            ),
          );
        },
        itemCount: products.length,
      ),
    );
  }
}

class Animation2Screen extends StatelessWidget {
  const Animation2Screen({super.key, required this.item});
  final Product item;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Details")),
      body: Column(
        children: [
          Hero(tag: item.name, child: Image.network(item.image)),
          Text(item.name),
          Text(item.price.toString()),
          Text(item.categpry),
        ],
      ),
    );
  }
}
























// import 'package:flutter/material.dart';

// class AnimationScreen extends StatefulWidget {
//   const AnimationScreen({super.key});

//   @override
//   State<AnimationScreen> createState() => _AnimationScreenState();
// }

// class _AnimationScreenState extends State<AnimationScreen> {
//   @override
//   void initState() {
//     super.initState();
//   }

//   double size = 200;
//   Color color = Colors.red;
//   double opacity = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SizedBox(
//         height: MediaQuery.sizeOf(context).height,
//         width: MediaQuery.sizeOf(context).width,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             AnimatedContainer(
//               width: size,
//               height: size,
//               color: color,
//               duration: Duration(seconds: 2),
//             ),

//             ElevatedButton(
//               onPressed: () {
//                 setState(() {
//                   size = size == 200 ? 100 : 200;
//                   color = color == Colors.red ? Colors.blue : Colors.red;

//                   opacity = opacity == 0 ? 1 : 0;
//                 });
//               },
//               child: Text("Start"),
//             ),

//             AnimatedOpacity(
//               opacity: opacity,
//               duration: Duration(milliseconds: 500),
//               child: Image.asset(
//                 "assets/images/image-optimisation-scaled.jpg",
//                 width: 200,
//                 height: 100,
//                 fit: BoxFit.cover,
//               ),
//             ),

//             AnimatedCrossFade(
//               firstChild: Text("Hello There"),
//               secondChild: ElevatedButton(
//                 onPressed: () {},
//                 child: Text("Hello There"),
//               ),
//               crossFadeState: CrossFadeState.showSecond,
//               duration: Duration(seconds: 1),
//             ),

//             ElevatedButton(
//               onPressed: () {
//                 Navigator.push(context, buildRoute(AnimationScreen2()));
//               },
//               child: Text("Go To"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// PageRoute buildRoute(Widget screen) {
//   return PageRouteBuilder(
//     transitionDuration: Duration(seconds: 1),
//     pageBuilder: (context, animation, secondaryAnimation) {
//       // 1- Type Transition ( slide - fade - Scale - Rotation )
//       return SlideTransition(
//         position: animation.drive(
//           Tween(begin: Offset(-1, 0), end: Offset(0, 0)),
//         ),
//         child: FadeTransition(
//           opacity: animation.drive(Tween(begin: 0.0, end: 1.0)),
//           child: screen,
//         ),
//       );

//       // return FadeTransition(
//       //   opacity: animation.drive(Tween(begin: 0.0, end: 1.0)),
//       //   child: screen,
//       // );

//       // return SizeTransition(
//       //   sizeFactor: animation.drive(Tween(begin: 0.0, end: 1.0)),
//       //   child: screen,
//       // );

//       // return screen;
//     },
//   );
// }


// class AnimationScreen2 extends StatelessWidget {
//   const AnimationScreen2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(backgroundColor: Colors.deepOrange);
//   }
// }
