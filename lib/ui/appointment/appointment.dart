import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lox/utils/colors.dart';

class AppointmentPage extends StatefulWidget {
  AppointmentPage({Key? key}) : super(key: key);

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
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
                title: Text('April 10, 2021'),
                subtitle: Text('Today'),
                trailing: Container(
                  height: 24,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.blue,
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
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text('Reminder'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text('Dont forget schedule for upcoming appointment'),
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
                            child: Text('Seun Olumide'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Text('Nurse'),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: SizedBox(
                              child: Row(
                                children: [
                                  Container(
                                    child: Center(child: Icon(Icons.star)),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text('Rating'),
                                      Text('4.78 out of 5')
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Image.asset('name'),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: Container(
                        child: Row(
                      children: [
                        Container(
                          color: Colors.blue,
                          height: 24,
                          width: 24,
                          child: Icon(
                            Icons.sort_sharp,
                            color: AppColors.white,
                          ),
                        ),
                        Text('Monday, Dec, 23'),
                        Icon(
                          Icons.access_time_sharp,
                          color: Colors.blue,
                        ),
                        Text('12:00-13:00'),
                      ],
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.blue),
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
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              border: Border.all(width: 1, color: Colors.blue)),
                          height: 32,
                          width: 150,
                          child: Center(
                              child: Text(
                            'Cancel',
                            style: TextStyle(
                              color: Colors.blue,
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
