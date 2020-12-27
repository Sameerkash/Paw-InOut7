import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MessageView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios, color: Colors.grey),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Messages",
              style: Theme.of(context).textTheme.headline3,
            ),
            MessageCard(
              title: "Harely Quinn",
              subtitle: "Hey, I was interested in adopting the pet you posted",
              imageURL: 'assets/images/m1.jpeg',
            ),
            MessageCard(
              title: "Yulus Nagri",
              subtitle: "Your pet was found at this location",
              imageURL: 'assets/images/m2.jpeg',
            ),
            MessageCard(
              title: "Justine Harvey",
              subtitle: "Hello...",
              imageURL: 'assets/images/m3.jpg',
            ),
            MessageCard(
              title: "Nicole",
              subtitle: "I have a cute tiny shihtzu, fluffy like a toy",
              imageURL: 'assets/images/m4.jpeg',
              onTap: () {
                context.rootNavigator.push('/message-detail-view');
              },
            ),
            MessageCard(
              title: "Marely",
              subtitle: "Ciao",
              imageURL: 'assets/images/m5.jpeg',
            ),
          ],
        ),
      ),
    );
  }
}

class MessageCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imageURL;
  final Function onTap;
  const MessageCard({
    Key key,
    this.title,
    this.subtitle,
    this.imageURL,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      child: ListTile(
        onTap: onTap,
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageURL),
        ),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        subtitle: Text(
          subtitle,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
