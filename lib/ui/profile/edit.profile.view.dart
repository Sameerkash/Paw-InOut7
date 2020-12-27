import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/user/user.dart';
import '../../utils/image.dart';
import '../../widgets/dialog.dart';
import '../../widgets/textField.dart';
import 'profile.view.dart';

class EditProfileView extends StatefulHookWidget {
  final AppUser profile;
  EditProfileView({
    this.profile,
  });

  @override
  _EditProfileViewState createState() => _EditProfileViewState();
}

class _EditProfileViewState extends State<EditProfileView> {
  Map<String, dynamic> form = {};
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    form = {
      'name': widget.profile?.userName,
      'email': widget.profile?.email,
      'phone': widget.profile?.phone,
      'address': widget.profile?.adress,
      'bio': widget.profile?.bio
    };

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var isUploading = useState(false);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: 0.05.sw, vertical: 0.015.sh),
                child: AutoSizeText(
                  "Edit Profile",
                  style: GoogleFonts.openSans(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.amber[400]),
                ),
              ),
              InkWell(
                onTap: () async {
                  final image = await pickImage();
                  isUploading.value = true;
                  await context.read(profileProvider).updateImage(image);
                  isUploading.value = false;
                },
                child: Align(
                  alignment: Alignment.center,
                  child: CachedNetworkImage(
                    imageUrl: widget.profile.imageUrl,
                    progressIndicatorBuilder: (_, str, __) => CircleAvatar(
                      radius: 0.072.sh,
                      child: CircularProgressIndicator(),
                    ),
                    imageBuilder: (_, img) {
                      return CircleAvatar(
                        radius: 0.072.sh,
                        backgroundImage: img,
                        child: isUploading.value
                            ? CircularProgressIndicator()
                            : Container(),
                      );
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 0.03.sh,
              ),
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.amber[300],
                elevation: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CustomTextFormField(
                              label: "Name",
                              initialValue: form['name'],
                              onSave: (val) {
                                form['name'] = val;
                              },
                              validate: (val) {
                                if (val.isEmpty || val.length < 6)
                                  return 'Please enter a valid name';
                              },
                            ),
                            CustomTextFormField(
                              label: "Email",
                              readOnly: true,
                              initialValue: form['email'],
                            ),
                            CustomTextFormField(
                              label: "Phone",
                              initialValue: form['phone'],
                              onSave: (val) {
                                form['phone'] = val;
                              },
                              validate: (val) {
                                if (val.isEmpty || val.length != 10)
                                  return 'Please enter a valid phone umber';
                              },
                            ),
                            CustomTextFormField(
                              label: "Bio",
                              maxLines: 2,
                              initialValue: form['bio'],
                              onSave: (val) {
                                form['bio'] = val;
                              },
                            ),
                            CustomTextFormField(
                              label: "Address",
                              initialValue: form['address'],
                              onSave: (val) {
                                form['address'] = val;
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              Align(
                alignment: Alignment.center,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(
                      horizontal: 0.35.sw, vertical: 0.01.sh),
                  elevation: 3,
                  onPressed: () async {
                    if (validateAndSaveForm(_formKey)) {
                      showBlockingDialog(context);
                      await context.read(profileProvider).updateProfile(form);
                      context.rootNavigator.pop();
                    }
                  },
                  child: Text(
                    'Submit',
                    style: GoogleFonts.openSans(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  color: Colors.amber[300],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
