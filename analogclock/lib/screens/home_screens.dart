import 'package:analogclock/screens/components/body.dart';
import 'package:analogclock/screens/components/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreens extends StatelessWidget {
  const HomeScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // we have to call this on our starting page
    SizeConfig().init(context);
    return Scaffold(
    appBar: buildAppBar(context),
    body: const Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
    leading: IconButton(onPressed: (){},
     icon: SvgPicture.asset("assets/icons/Settings.svg",
     color: Theme.of(context).iconTheme.color,)),
     actions: [
      buildAppButton(context)],
  );
  }

  Padding buildAppButton(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: InkWell(
          onTap: () {},
          child: Container(
            width: getProportionateScreenWidth(32),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              shape: BoxShape.circle
            ),
            child: const  
            Icon(Icons.add,
            color: Colors.white,),
          ),
        ),
      );
  }
}