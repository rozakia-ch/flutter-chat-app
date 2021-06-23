import 'package:flutter/material.dart';
import 'package:chat_app/ui/themes/style.dart' as style;

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
    required this.image,
    this.isShowPhotoUpload = false,
    this.imageUploadBtnPress,
  }) : super(key: key);

  final String image;
  final bool isShowPhotoUpload;
  final VoidCallback? imageUploadBtnPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(style.defaultPadding),
      margin: EdgeInsets.symmetric(vertical: style.defaultPadding),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.08),
        ),
      ),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(image),
          ),
          InkWell(
            onTap: imageUploadBtnPress,
            child: CircleAvatar(
              radius: 13,
              backgroundColor: Theme.of(context).primaryColor,
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }
}
