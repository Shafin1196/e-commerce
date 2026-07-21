import 'package:e_commerce/app/asset_paths.dart';
import 'package:e_commerce/features/home/presentaion/widgets/circle_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeAppBar extends StatelessWidget  implements PreferredSizeWidget {
  const HomeAppBar({
    super.key,
  });
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  
  Widget build(BuildContext context) {
    return AppBar(
      title: SvgPicture.asset(
        AssetPaths.navLogo,
        height: 30,
      ),
      actions: [
        CircleIconButton(
          icon:Icons.person,
          onTap: (){},
        ),
        const SizedBox(width: 8,),
        CircleIconButton(
          icon:Icons.call,
          onTap: (){},
        ),
        const SizedBox(width: 8,),
        CircleIconButton(
          icon:Icons.notifications,
          onTap: (){},
        ),
      ],
    );
  }
}
