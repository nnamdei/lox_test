import 'dart:math';

import 'package:flutter/material.dart';
import 'package:time_planner/time_planner.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lox/ui/payment.dart';
import 'package:lox/utils/colors.dart';

class AppointmentPage extends StatefulWidget {
  AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  List<TimePlannerTask> tasks = [];

  void _addObject(BuildContext context) {
    List<Color?> colors = [
      Colors.purple,
      Colors.blue,
      Colors.green,
      Colors.orange,
      Colors.lime[600]
    ];

    setState(() {
      tasks.add(
        TimePlannerTask(
          color: colors[Random().nextInt(colors.length)],
          dateTime: TimePlannerDateTime(
              day: Random().nextInt(14),
              hour: Random().nextInt(18) + 6,
              minutes: Random().nextInt(60)),
          minutesDuration: Random().nextInt(90) + 30,
          daysDuration: Random().nextInt(4) + 1,
          onTap: () {
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('You click on time planner object')));
          },
          child: Text(
            'this is a demo',
            style: TextStyle(color: Colors.grey[350], fontSize: 12),
          ),
        ),
      );
    });

    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Random task added to time planner!')));
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => Scaffold(
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0),
                  child: Icon(
                    Icons.arrow_back,
                    size: 16,
                    color: Colors.black,
                  ),
                )),
            ListTile(
                title: Text(
                  'April 08, 2021',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 12),
                ),
                subtitle: Text(
                  'Today',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                trailing: Container(
                  height: 24,
                  width: 100,
                  decoration: BoxDecoration(
                      color: AppColors.color2,
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.add,
                          color: AppColors.white,
                          size: 10,
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          'Add',
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: AppColors.white),
                        ),
                      ],
                    ),
                  ),
                )),
            Container(
              height: 250.h,
              child: TimePlanner(
                startHour: 6,
                endHour: 23,
                headers: [
                  TimePlannerTitle(
                    date: "12",
                    title: "Mo",
                  ),
                  TimePlannerTitle(
                    date: "13",
                    title: "Tu",
                  ),
                  TimePlannerTitle(
                    date: "14",
                    title: "Wed",
                  ),
                  TimePlannerTitle(
                    date: "15",
                    title: "Th",
                  ),
                ],
                tasks: tasks,
                style: TimePlannerStyle(
                  // cellHeight: 60,
                  // cellWidth: 60,
                  showScrollBar: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0,top: 8),
              child: Text(
                'Reminder',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text(
                'Dont forget schedule for upcoming appointment',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 12),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Seun Olumide',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text(
                              'Nurse',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: SizedBox(
                              child: Row(
                                children: [
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
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                            fontSize: 8,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        height: 48,
                        width: 48,
                        child: Image.asset('name'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: Container(
                        height: 48,
                        decoration: BoxDecoration(
                            color: AppColors.color5,
                            borderRadius: BorderRadius.circular(12)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 10.w,
                            ),
                            Container(
                              color: AppColors.color2,
                              child: Icon(
                                Icons.subject,
                                color: AppColors.white,
                                size: 12,
                              ),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'Monday, Dec, 23',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                            Spacer(),
                            Icon(
                              Icons.access_time_sharp,
                              color: AppColors.color2,
                              size: 12,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              '12:00-13:00',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 12),
                            ),
                               SizedBox(
                              width: 10.w,
                            ),
                          ],
                        )),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Payment()));
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: AppColors.color2),
                            height: 32,
                            width: 150,
                            child: Center(
                                child: Text(
                              'Schedule',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            )),
                          ),
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
                            'Cancel',
                            style: TextStyle(
                              color: AppColors.color2,
                              fontSize: 12,
                            ),
                          )),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
