import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:petme/ui/adoption/adoptionlist.view.dart';
import 'package:swipebuttonflutter/swipebuttonflutter.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:auto_route/auto_route.dart';

class AdoptionHome extends HookWidget {
  @override
  Widget build(BuildContext context) {
    var checkbox = useState(false);
    return Scaffold(
      backgroundColor: Colors.amber[400],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                child: AutoSizeText(
                  "Adopt, Don't shop",
                  style: Theme.of(context)
                      .textTheme
                      .headline3
                      .copyWith(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 0.05.sh,
              ),
              Container(
                child: AutoSizeText(
                  '''When you adopt, you save a loving animal by making them part of your family and open up shelter space for another animal who might desperately need it.
''',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(color: Colors.white, fontSize: 12),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  height: 0.4.sh,
                  child: Image(
                    image: AssetImage('assets/images/adopts.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 0.1.sh,
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Checkbox(
                        value: checkbox.value,
                        onChanged: (val) {
                          checkbox.value = val;
                        }),
                    Text(
                      "I Agree to the T&C of adopting",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText2
                          .copyWith(color: Colors.white, fontSize: 12),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 0.02.sh,
              ),
              FlatButton(
                color: Colors.white,
                onPressed: checkbox.value
                    ? () {
                        context.rootNavigator.push('/adoption-list');
                      }
                    : null,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: checkbox.value
                    ? Container(
                        alignment: Alignment.center,
                        width: 0.65.sw,
                        height: 0.05.sh,
                        child: Text("Get Started",
                            style: Theme.of(context).textTheme.bodyText2))
                    : Container(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
