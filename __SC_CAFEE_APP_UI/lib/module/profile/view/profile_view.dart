import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hyper_ui/core.dart';

class ProfileView extends StatefulWidget {
  ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  ProfileController controller = ProfileController();

  @override
  void initState() {
    controller.initState();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => controller,
      child: BlocListener<ProfileController, ProfileState>(
        listener: (context, state) {},
        child: BlocBuilder<ProfileController, ProfileState>(
          builder: (context, state) {
            final bloc = context.read<ProfileController>();
            return buildView(context, bloc, state);
          },
        ),
      ),
    );
  }

  Widget buildView(
    BuildContext context,
    ProfileController controller,
    ProfileState state,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Profile'),
        elevation: 0.0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.tune,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 32.0,
                  backgroundImage: NetworkImage(
                    "https://i.ibb.co/PGv8ZzG/me.jpg",
                  ),
                ),
                SizedBox(
                  width: 8.0,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Deny Ocr",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        "demo@gmail.com",
                        style: TextStyle(
                          fontSize: 16.0,
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => Get.to(EditProfileView()),
                  icon: Icon(
                    Icons.edit,
                    size: 24.0,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 32.0,
            ),
            H6(title: "Settings"),
            ListTile(
              leading: Icon(Icons.help),
              minLeadingWidth: 0.0,
              title: Text("Help centre"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
            ),
            ListTile(
              leading: Icon(Icons.question_mark),
              minLeadingWidth: 0.0,
              title: Text("FAQ"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              minLeadingWidth: 0.0,
              title: Text("Privacy policy"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              minLeadingWidth: 0.0,
              title: Text("TOS"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              minLeadingWidth: 0.0,
              title: Text("Logout"),
              trailing: Icon(
                Icons.chevron_right,
                size: 24.0,
              ),
              onTap: () async {
                await controller.logout();
                Get.offAll(LoginView());
              },
            ),
          ],
        ),
      ),
    );
  }
}
