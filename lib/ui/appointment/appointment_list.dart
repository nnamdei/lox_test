import 'dart:html';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lox/utils/colors.dart';
import 'package:timelines/timelines.dart';

class AppointmentList extends StatefulWidget {
  AppointmentList({Key? key}) : super(key: key);

  @override
  State<AppointmentList> createState() => _AppointmentListState();
}

class _AppointmentListState extends State<AppointmentList>
    with SingleTickerProviderStateMixin {
  int selectedCategoryIndex = 0;
  TabController? _controller;
  bool? isSelected;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: _days.length, vsync: this);
    // getSchedules(_schedulesData);
    _controller!.addListener(() {
      setState(() {
        selectedCategoryIndex = _controller!.index;
      });
      print("Selected Index: " + _controller!.index.toString());
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller!.dispose();
  }

  Map<String, int> _days = {
    "Sun": 0,
    "Mon": 1,
    "Tue": 2,
    "Wed": 3,
    "Thur": 4,
    "Fri": 5,
    "Sat": 6,
  };

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: ((context, child) => Scaffold(
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                      ),
                    ),
                    TabBar(
                        isScrollable: true,
                        controller: _controller,
                        indicatorColor: Colors.transparent,
                        unselectedLabelColor: Colors.grey,
                        labelPadding: EdgeInsets.zero,
                        tabs: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategoryIndex = 0;
                                _controller!.index = 0;
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                    child: Text(
                                  // schedule[index].toString(),
                                  'Sun',
                                  style: TextStyle(
                                      color:
                                          _days["Sun"] == selectedCategoryIndex
                                              ? Colors.grey
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                                Center(
                                    child: Text(
                                  '6',
                                  style: TextStyle(
                                      color:
                                          _days["Sun"] == selectedCategoryIndex
                                              ? Colors.black
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategoryIndex = 1;
                                _controller!.index = 1;
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                    child: Text(
                                  // schedule[index].toString(),
                                  'Mon',
                                  style: TextStyle(
                                      color:
                                          _days["Mon"] == selectedCategoryIndex
                                              ? Colors.grey
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                                Center(
                                    child: Text(
                                  '7',
                                  style: TextStyle(
                                      color:
                                          _days["Mon"] == selectedCategoryIndex
                                              ? Colors.black
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategoryIndex = 2;
                                _controller!.index = 2;
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                    child: Text(
                                  // schedule[index].toString(),
                                  'Tues',
                                  style: TextStyle(
                                      color:
                                          _days["Tue"] == selectedCategoryIndex
                                              ? Colors.grey
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                                Center(
                                    child: Text(
                                  '8',
                                  style: TextStyle(
                                      color:
                                          _days["Tue"] == selectedCategoryIndex
                                              ? Colors.black
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategoryIndex = 3;
                                _controller!.index = 3;
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                    child: Text(
                                  // schedule[index].toString(),
                                  'Wed',
                                  style: TextStyle(
                                      color:
                                          _days["Wed"] == selectedCategoryIndex
                                              ? Colors.grey
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                                Center(
                                    child: Text(
                                  '9',
                                  style: TextStyle(
                                      color:
                                          _days["Wed"] == selectedCategoryIndex
                                              ? Colors.black
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategoryIndex = 4;
                                _controller!.index = 4;
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                    child: Text(
                                  // schedule[index].toString(),
                                  'Thurs',
                                  style: TextStyle(
                                      color:
                                          _days["Thur"] == selectedCategoryIndex
                                              ? Colors.grey
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                                Center(
                                    child: Text(
                                  '10',
                                  style: TextStyle(
                                      color:
                                          _days["Thur"] == selectedCategoryIndex
                                              ? Colors.black
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategoryIndex = 5;
                                _controller!.index = 5;
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                    child: Text(
                                  // schedule[index].toString(),
                                  'Fri',
                                  style: TextStyle(
                                      color:
                                          _days["Fri"] == selectedCategoryIndex
                                              ? Colors.grey
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                                Center(
                                    child: Text(
                                  '11',
                                  style: TextStyle(
                                      color:
                                          _days["Fri"] == selectedCategoryIndex
                                              ? Colors.black
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedCategoryIndex = 6;
                                _controller!.index = 6;
                              });
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Center(
                                    child: Text(
                                  // schedule[index].toString(),
                                  'Sat',
                                  style: TextStyle(
                                      color:
                                          _days["Sat"] == selectedCategoryIndex
                                              ? Colors.grey
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                                Center(
                                    child: Text(
                                  '12',
                                  style: TextStyle(
                                      color:
                                          _days["Sat"] == selectedCategoryIndex
                                              ? Colors.black
                                              : Colors.green,
                                      fontSize: 14),
                                )),
                              ],
                            ),
                          ),
                        ]),
                    Container(
                      height: 300.h,
                      child: TabBarView(controller: _controller, children: [
                        SizedBox(
                          height: 300,
                          //  width: 300,
                          child: Timeline.tileBuilder(
                            builder: TimelineTileBuilder.fromStyle(
                              indicatorStyle: IndicatorStyle.outlined,
                              // contentsAlign: ContentsAlign.basic,
                              contentsBuilder: (context, index) => ListTile(
                                  title: Text('Seun Olamide'),
                                  subtitle: Text('9:00AM'),
                                  trailing: Checkbox(
                                    value: true,
                                    onChanged: onChanged,
                                    checkColor: Colors.white,
                                  )),
                              itemCount: 4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          //  width: 300,
                          child: Timeline.tileBuilder(
                            builder: TimelineTileBuilder.fromStyle(
                              indicatorStyle: IndicatorStyle.outlined,
                              contentsAlign: ContentsAlign.basic,
                              contentsBuilder: (context, index) => ListTile(
                                  title: Text('Seun Olamide'),
                                  subtitle: Text('9:00AM'),
                                  trailing: Checkbox(
                                    value: true,
                                    onChanged: onChanged,
                                    checkColor: Colors.white,
                                  )),
                              itemCount: 4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          //  width: 300,
                          child: Timeline.tileBuilder(
                            builder: TimelineTileBuilder.fromStyle(
                              indicatorStyle: IndicatorStyle.outlined,
                              contentsAlign: ContentsAlign.basic,
                              contentsBuilder: (context, index) => ListTile(
                                  title: Text('Seun Olamide'),
                                  subtitle: Text('9:00AM'),
                                  trailing: Checkbox(
                                    value: true,
                                    onChanged: onChanged,
                                    checkColor: Colors.white,
                                  )),
                              itemCount: 4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          //  width: 300,
                          child: Timeline.tileBuilder(
                            builder: TimelineTileBuilder.fromStyle(
                              indicatorStyle: IndicatorStyle.outlined,
                              contentsAlign: ContentsAlign.basic,
                              contentsBuilder: (context, index) => ListTile(
                                  title: Text('Seun Olamide'),
                                  subtitle: Text('9:00AM'),
                                  trailing: Checkbox(
                                    value: true,
                                    onChanged: onChanged,
                                    checkColor: Colors.white,
                                  )),
                              itemCount: 4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          //  width: 300,
                          child: Timeline.tileBuilder(
                            builder: TimelineTileBuilder.fromStyle(
                              indicatorStyle: IndicatorStyle.outlined,
                              contentsAlign: ContentsAlign.basic,
                              contentsBuilder: (context, index) => ListTile(
                                  title: Text('Seun Olamide'),
                                  subtitle: Text('9:00AM'),
                                  trailing: Checkbox(
                                    value: true,
                                    onChanged: onChanged,
                                    checkColor: Colors.white,
                                  )),
                              itemCount: 4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          //  width: 300,
                          child: Timeline.tileBuilder(
                            builder: TimelineTileBuilder.fromStyle(
                              indicatorStyle: IndicatorStyle.outlined,
                              contentsAlign: ContentsAlign.basic,
                              contentsBuilder: (context, index) => ListTile(
                                  title: Text('Seun Olamide'),
                                  subtitle: Text('9:00AM'),
                                  trailing: Checkbox(
                                    value: true,
                                    onChanged: onChanged,
                                    checkColor: Colors.white,
                                  )),
                              itemCount: 4,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          //  width: 300,
                          child: Timeline.tileBuilder(
                            builder: TimelineTileBuilder.fromStyle(
                              indicatorStyle: IndicatorStyle.outlined,
                              contentsAlign: ContentsAlign.basic,
                              contentsBuilder: (context, index) => ListTile(
                                  title: Text('Seun Olamide'),
                                  subtitle: Text('9:00AM'),
                                  trailing: Checkbox(
                                    value: true,
                                    onChanged: onChanged,
                                    checkColor: Colors.white,
                                  )),
                              itemCount: 4,
                            ),
                          ),
                        ),
                      ]),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (context) => AppointmentList()));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, right: 16),
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
                                  'Add Appointment',
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12),
                                ),
                              )), //background color of inner container
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }

  void onChanged(bool? value) {}
}
