import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lox/ui/appointment/appointment_list.dart';
import 'package:lox/utils/colors.dart';

class AppointmentSuccess extends StatelessWidget {
  const AppointmentSuccess({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ScreenUtilInit(
            designSize: const Size(360, 690),
            builder: (context, child) => SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24.h,
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
                        SizedBox(
                          height: 100.h,
                        ),
                        Center(
                          child: CircleAvatar(
                            backgroundColor: AppColors.color6,
                            radius: 50,
                            child: Icon(
                              Icons.done_outlined,
                              color: AppColors.white,
                              size: 24,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Center(
                            child: Text(
                          'Done',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        )),
                        SizedBox(
                          height: 60.h,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AppointmentList()));
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, right: 16),
                            child: DottedBorder(
                              color: Colors.black, //color of dotted/dash line
                              strokeWidth: 2, //thickness of dash/dots
                              dashPattern: [1, 3],
                              //dash patterns, 10 is dash width, 6 is space width
                              child: Container(
                                  //inner container
                                  height: 48, //height of inner container
                                  // width:
                                  //     double.infinity, //width to 100% match to parent container.
                                  // color: Colors.yellow,
                                  child: Center(
                                    child: Text(
                                      'View Appointments',
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12),
                                    ),
                                  )), //background color of inner container
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                      ]),
                )));
  }
}
