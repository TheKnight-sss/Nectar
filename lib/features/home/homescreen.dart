import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:necture_ui/core/utils/appcolor.dart';
import 'package:necture_ui/features/home/widgets/best_selling_builder.dart';
import 'package:necture_ui/features/home/widgets/exclusive_builder.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          "assets/images/LogoIcon.svg",
          height: 56,
          colorFilter: ColorFilter.mode(Appcolor.primaryColor, BlendMode.srcIn),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ExclusiveBuilder(),
              SizedBox(height: 20),
              BestSellingBuilder()            
            ],
          ),
        ),
      ),
    );
  }
}
