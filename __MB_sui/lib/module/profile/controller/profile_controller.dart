import 'package:flutter/material.dart';
import 'package:sui/core.dart';

class ProfileController extends State<ProfileView> {
  static late ProfileController instance;
  late ProfileView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List menuItems = [
    {
      "label": "Edit profile",
      "view": const EditProfileView(),
    },
    {
      "label": "Change password",
      "view": const ChangePasswordView(),
    },
    {
      "label": "Settings",
      "view": const EditProfileView(),
    },
    {
      "label": "Help",
      "view": const EditProfileView(),
    },
    {
      "label": "FAQ",
      "view": const EditProfileView(),
    },
    {
      "label": "Privacy Policy",
      "view": const EditProfileView(),
    },
    {
      "label": "TOS",
      "view": const EditProfileView(),
    },
    {
      "label": "Logout",
      "view": const EditProfileView(),
    }
  ];
}
