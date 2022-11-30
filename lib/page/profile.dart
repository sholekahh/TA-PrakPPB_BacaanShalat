import 'package:bacaan_sholat/model/constrants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

const kDefaultPadding = 20.0;

const kWidthSizedBox = SizedBox(
  width: kDefaultPadding,
);
const sizedBox = SizedBox(
  height: kDefaultPadding,
);

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profil"),
      ),
      body: Container(
          padding: EdgeInsets.only(right: kDefaultPadding / 2),
          color: Colors.white,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(kDefaultPadding * 2),
                    bottomLeft: Radius.circular(kDefaultPadding * 2),
                  ),
                ),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CircleAvatar(
                    maxRadius: 50.0,
                    minRadius: 50.0,
                    backgroundImage: AssetImage('assets/images/profile.jpeg'),
                  ),
                  kWidthSizedBox,
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: EdgeInsets.all(2.0)),
                        Text(
                          'Siti Sholekah',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          '21120120120003',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        Text(
                          'Teknik Komputer',
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                      ]),
                ]),
              ),
              sizedBox,
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [Text("Tanggal Lahir"), Text("17 Maret 2002")])
            ],
          )),
    );
  }
}
