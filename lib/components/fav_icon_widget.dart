import 'package:flutter/material.dart';

class FavIconWidget extends StatefulWidget {
  const FavIconWidget({super.key});

  @override
  State<FavIconWidget> createState() => _FavIconWidgetState();
}

class _FavIconWidgetState extends State<FavIconWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController animController;
  late Animation<double> sizeAnim;
  late Animation<Color?> colorAnim;

  @override
  void initState() {
    animController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );

    // sizeAnim = Tween<double>(begin: 40, end: 60).animate(animController);

    sizeAnim = TweenSequence<double>([
      TweenSequenceItem(tween: Tween<double>(begin: 20, end: 40), weight: 50),

      TweenSequenceItem(tween: Tween<double>(begin: 40, end: 20), weight: 50),
    ]).animate(animController);

    colorAnim = ColorTween(
      begin: Colors.grey,
      end: Colors.red,
    ).animate(animController);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        if (animController.isCompleted) {
          animController.reverse();
        } else {
          animController.forward();
        }
      },
      icon: AnimatedBuilder(
        animation: sizeAnim,
        builder: (context, child) {
          return AnimatedBuilder(
            animation: colorAnim,
            builder: (context, child) {
              return Icon(
                Icons.favorite,
                size: sizeAnim.value,
                color: colorAnim.value,
              );
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }
}
