import 'package:flutter/material.dart';
import 'package:greenui/Data/Activities.dart';
import 'package:greenui/Pages/CurrentDate.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final _controller = PageController();
final List<Map<String,String>> main=[
{
    "title":"Our Vision",
    "cotent":"Embark on a sustainable journey with us. We envision a world where every small eco-friendly choice contributes to a healthier planet. Join us in making sustainability a way of life.",
},
{
    "title":"Our Objectives",
    "cotent":"We strive to empower individuals with the knowledge and tools to make environmentally conscious decisions. Through education and action, we aim to create a community dedicated to preserving our planet for future generations.",
},
{
    "title":"Our Goals",
  "cotent":"Together, let's set and achieve milestones for a greener future. Our goals include promoting recycling, reducing carbon footprint, and fostering a global network of eco-conscious individuals. Join us in making a positive impact.",
}
];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         bottomNavigationBar: BottomNavigationBar(        selectedItemColor:Colors.green,
items:  [ BottomNavigationBarItem(label: "home",icon: InkWell(
          onTap: () {
            Navigator.of(context).pushNamed("MainPage");
          },
          
          child: const Icon(Icons.home))),
         BottomNavigationBarItem(label: "act",icon: InkWell(onTap: (){
          Navigator.of(context).pushNamed("actPage");
         },child: const Icon(Icons.volunteer_activism_outlined)),
         ),
         const BottomNavigationBarItem(label: "community",icon: Icon(Icons.chat_bubble_rounded)),
         ]),
      appBar: AppBar(
        title: const ListTile(
          title: Text(
            "GreenU",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          subtitle: CurrentDateWidget(),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, size: Theme.of(context).appBarTheme.actionsIconTheme!.size),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.account_circle_outlined, size: Theme.of(context).appBarTheme.actionsIconTheme!.size),
          ),
        ],
      ),
   
      body: Column(
        children: [
          const SizedBox(height: 16,),
          SizedBox(
            height: 340,
            child: PageView.builder(
              controller: _controller,
              itemCount: activities.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration:  const BoxDecoration(
                    image: DecorationImage(image: AssetImage("assests/images/output-onlinepngtools (1).png"),
                    fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: Stack(
                    children: [
                      // const Image(image: AssetImage("assests/images/hhhss.jpg"),fit: BoxFit.cover,),
                      SizedBox(
                      
                        height: 340,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              
                              Text(
                                activities[index]['date'].toString().split(' ')[0],
                                style: const TextStyle(fontSize: 14,color: Colors.black),
                              ),
                              Text(
                                activities[index]['title'].toString(),
                                style: const TextStyle(color: Colors.black,fontSize: 26, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  const Text("by ",style: TextStyle(color: Colors.black),),
                                  Text("${activities[index]['author']}", style: const TextStyle(color: Colors.purple)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                  Positioned(
                    bottom: 1,
                    right: 8,
                    child: IconButton(onPressed: (){}, icon: const Icon(Icons.drag_indicator_rounded))),
                
                      Positioned(
                        top: 8.0,
                        right: 8.0,
                        child: SmoothPageIndicator(
                          controller: _controller,
                          count: activities.length,
                          effect: const WormEffect(
                            dotHeight: 10,
                            dotWidth: 10,
                            activeDotColor: Color.fromARGB(255, 1, 51, 11),
                            type: WormType.thinUnderground,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },

            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(itemCount: main.length,itemBuilder:(context, index) {
              return
              Padding(
                padding: const EdgeInsets.only(left: 14,right: 14,bottom: 8,top: 8),
                child: Column(
                  children: [
                    ExpansionTile(
                      
                      collapsedBackgroundColor: Colors.green.shade500,
                      backgroundColor: Colors.grey.shade100,
                      shape:RoundedRectangleBorder(  borderRadius: BorderRadius.circular(10.0)) ,
                      collapsedShape:RoundedRectangleBorder(  borderRadius: BorderRadius.circular(12.0)),
                    title: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(main[index]["title"].toString()),
                    ),
                    children:  [
                      Container(
                       padding: const EdgeInsets.all(8),
                        child: 
                        Text(main[index]["cotent"].toString()),
                      )
                    ],
                    )
                  ],
                ),
              )
              
              ;
            },),
          )
        ],
        
      ),
    );
  }
}
