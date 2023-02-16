import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    var cardstyle=TextStyle(
      fontFamily: 'Macterla',
      fontWeight: FontWeight.bold,fontSize: 14,color: Color.fromRGBO(63, 63, 63, 1)
    );
    return Scaffold(
      body:
      Stack(
            children: [
              Container(
                height: size.height*0.30,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60)),
                  image: DecorationImage(
                    alignment: Alignment.topCenter,
                    fit: BoxFit.fill,
                    image:AssetImage('assets/images/purplebackground.webp',

                    )

                  )
                ),
              ),

               Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(Icons.settings),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 10),
                      child: Container(
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage('assets/images/girl.jfif'),
                            ),
                            SizedBox(width: 10,),
                            Column(
                              children: [
                               Text('Ema Watson',style: TextStyle(color: Colors.black,fontSize: 20,fontFamily:'Giblant' ),),
                                Text('id:456345',style: TextStyle(color: Colors.white),)
                              ],
                            ),

                          ],
                        ),
                      ),
                    ),
                   SizedBox(height: 10,),

                   Expanded(
                       child: Padding(
                         padding: const EdgeInsets.all(10.0),
                         child: GridView.count(crossAxisCount: 2,
                          mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            primary: false,
                            children: [
                              Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                elevation: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                   SvgPicture.asset('assets/images/student-medium-dark-skin-tone-svgrepo-com.svg',height: 130,),
                                    Text('Personal Data',style: cardstyle
                                      ,)
                                    //SvgPicture.network('https://www.svgrepo.com/show/364888/student-fill.svg',height: 30,)
                                  ],
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                elevation: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/images/calender.svg',height: 130,),
                                    Text('Course Shedule',style: cardstyle
                                      ,)
                                    //SvgPicture.network('https://www.svgrepo.com/show/364888/student-fill.svg',height: 30,)
                                  ],
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                elevation: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/images/certificate-svgrepo-com.svg',height: 130,),
                                    Text('Attendance Recap',style: cardstyle
                                      ,)
                                    //SvgPicture.network('https://www.svgrepo.com/show/364888/student-fill.svg',height: 30,)
                                  ],
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                elevation: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/images/result.svg',height: 130,),
                                    Text('Study Result',style: cardstyle
                                      ,)
                                    //SvgPicture.network('https://www.svgrepo.com/show/364888/student-fill.svg',height: 30,)
                                  ],
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                elevation: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/images/studying.svg',height: 130,),
                                    Text('Course Booking',style: cardstyle
                                      ,)
                                    //SvgPicture.network('https://www.svgrepo.com/show/364888/student-fill.svg',height: 30,)
                                  ],
                                ),
                              ),
                              Card(
                                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                elevation: 4,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset('assets/images/courses.svg',height: 130,),
                                    Text('Course plan',style: cardstyle
                                      ,)
                                    //SvgPicture.network('https://www.svgrepo.com/show/364888/student-fill.svg',height: 30,)
                                  ],
                                ),
                              )

                            ],
                          ),
                       ),
                     ),


                  ],
                ),


            ],
          ),


    );
  }
}
