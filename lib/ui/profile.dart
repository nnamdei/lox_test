import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lox/ui/appointment/appointment.dart';
import 'package:lox/utils/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) => Scaffold(
              bottomNavigationBar: Padding(
                padding: const EdgeInsets.only(bottom: 16.0, right: 8, left: 8),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => AppointmentPage()));
                  },
                  child: Container(
                    height: 48,
                    decoration: BoxDecoration(
                        color: AppColors.color2,
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal)),
                        ]),
                  ),
                ),
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: SizedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          // SizedBox(
                          //   width: 70.w,
                          // ),
                          Text(
                            'Profile',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          //  const Spacer(),
                          Icon(
                            Icons.mail_outline_sharp,
                            color: AppColors.color2,
                          )
                        ],
                      )),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Container(
                          height: 72,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(children: [
                              SizedBox(
                                width: 10.w,
                              ),
                              Image.asset(
                                'assets/images/woman.jpeg',
                                height: 48,
                                width: 48,
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Seun Olumide',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    'Nurse',
                                    style: TextStyle(
                                        fontSize: 10,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.people_outlined,
                                        color: AppColors.color2,
                                        size: 10,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text('Patients',
                                              style: TextStyle(
                                                color: Colors.grey,
                                                fontSize: 10,
                                                fontWeight: FontWeight.normal,
                                              )),
                                          Text(
                                            '345+',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 10,
                                                fontWeight: FontWeight.w500),
                                          )
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )
                            ]),
                          )),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '275',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Articles',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '234',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Following',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '123',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Followers',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.color2),
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
                          SizedBox(
                            width: 16.w,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                border: Border.all(
                                    width: 1, color: AppColors.color2)),
                            height: 32,
                            width: 150,
                            child: Center(
                                child: Text(
                              'Message',
                              style: TextStyle(
                                color: AppColors.color2,
                                fontSize: 12,
                              ),
                            )),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            SizedBox(width: 10.w,),
                            Container(
                              height: 32,
                              width: 32,
                              color: AppColors.color4,
                              child: Center(
                                  child: Icon(
                                Icons.star,
                                color: AppColors.color3,
                              )),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 10.h,),
                                Text(
                                  'Rating',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                                Text(
                                  '4.78 out of 5',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Spacer(),
                            Container(
                              width: 100,
                              height: 24,
                              decoration: BoxDecoration(
                                  color: AppColors.color2,
                                  borderRadius: BorderRadius.circular(20)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'See all',
                                    style: TextStyle(
                                        fontWeight: FontWeight.normal,
                                        color: Colors.white,
                                        fontSize: 12),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    size: 8,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),    SizedBox(
                              width: 10.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Divider(
                        color: Colors.grey[100],
                        height: 0.1,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    ListTile(
                        leading: CircleAvatar(
                            radius: 8,
                            child: Icon(
                              Icons.question_mark,
                              size: 10,
                            )),
                        title: Text(
                          'Anonymous feedback',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          'Very competent specialist. i am very happy\nthat there are such professional doctors. My\nbaby is unsafe hands. My child\'s health is\nabove all',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontWeight: FontWeight.normal),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 16.0, right: 16),
                      child: Divider(
                        color: Colors.grey,
                        height: 0.1,
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    ListTile(
                        leading: CircleAvatar(
                            radius: 8,
                            child: Icon(
                              Icons.question_mark,
                              size: 10,
                            )),
                        title: Text(
                          'Erika Lhee',
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        subtitle: Text(
                          'Just a wonderful doctor very happy that she\nis leading our child, competent, very smart, nice',
                          style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                              fontSize: 12),
                        ))
                  ],
                ),
              ),
            ));
  }
}
