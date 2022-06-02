import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lox/utils/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) => Scaffold(
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 48,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                      size: 16,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text('Make an appointment',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.normal)),
                  ]),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
                          child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: AppColors.white),
                              height: 24,
                              width: 24,
                              child: Center(
                                child: Icon(
                                  Icons.arrow_back_ios,
                                  size: 8,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 10.w,),
                          Text('Profile'),
                          const Spacer(),
                          Icon(
                            Icons.mail_outline_sharp,
                            color: Colors.blue,
                          )
                        ],
                      )),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:16.0),
                      child: Container(
                          child: Row(children: [
                        Image.asset('name'),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Seun Olumide'),
                            Text('Nurse'),
                            Row(
                              children: [
                                Icon(Icons.people_outlined),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [Text('Patients'), Text('345+')],
                                )
                              ],
                            )
                          ],
                        )
                      ])),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:16.0, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [Text('275'), Text('Articlles')],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [Text('234'), Text('Following')],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: [Text('123'), Text('Followers')],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.blue),
                            height: 32,
                            width: 150,
                            child: Center(
                                child: Text(
                              'Follow',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                border:
                                    Border.all(width: 1, color: Colors.blue)),
                            height: 32,
                            width: 150,
                            child: Center(
                                child: Text(
                              'Message',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 12,
                              ),
                            )),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0,right: 16),
                      child: SizedBox(
                        child: Row(
                          children: [
                            Container(
                              child: Center(child: Icon(Icons.star)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [Text('Rating'), Text('4.78 out of 5')],
                            ),
Spacer(),
                            Container(
                              width: 100,
                              height: 24,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment:MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'See all',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 12),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    size: 12,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:16.0,right: 16),
                      child: Divider(
                        color: Colors.grey,
                        height: 0.1,
                      ),
                    ),
                    ListTile(
                        leading: CircleAvatar(
                            radius: 16, child: Icon(Icons.question_mark)),
                        title: Text('Anonymous feedback'),
                        subtitle: Text(
                            'Very competent specialist. i am very happy\nthat there are such professional doctors. My\nbaby is unsafe hands. My child\'s health is\nabove all')),
                    Padding(
                      padding: const EdgeInsets.only(left:16.0,right: 16),
                      child: Divider(
                        color: Colors.grey,
                        height: 0.2,
                      ),
                    ),
                    ListTile(
                        leading: CircleAvatar(
                            radius: 16, child: Icon(Icons.question_mark)),
                        title: Text('Erika Lhee'),
                        subtitle: Text(
                            'Just a wonderful doctor very happy that she\nis leading our child, competent, very smart, nice'))
                  ],
                ),
              ),
            ));
  }
}
