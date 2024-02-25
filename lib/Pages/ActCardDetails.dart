import 'package:flutter/material.dart';
import 'package:greenui/Data/WasteManegmentLifeChoices.dart';
import 'package:greenui/Data/WasteManegmentOrg.dart';
import 'package:greenui/Data/eventsData.dart';
import 'package:greenui/Pages/CurrentDate.dart';
import 'package:greenui/Pages/Events.dart';
import 'package:greenui/Pages/LifeCoices.dart';
import 'package:greenui/Pages/OrganizationPage.dart';

class ActCardDetails extends StatefulWidget {
  Map carddetail;
  ActCardDetails({
    Key? key,
    required this.carddetail,
  }) : super(key: key);

  @override
  State<ActCardDetails> createState() => _ActCardDetailsState();
}

class _ActCardDetailsState extends State<ActCardDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor:Colors.green,
        
        items: [
           BottomNavigationBarItem(
            label: "home",
            icon:IconButton(onPressed: (){
              Navigator.pushNamed(context, "MainPage");
            }, icon:  const Icon(Icons.home),)
          ),
          BottomNavigationBarItem(
            label: "act",
            icon: InkWell(
              onTap: () {
                Navigator.of(context).pushNamed("actPage");
              },
              child:  IconButton(onPressed: (){
              Navigator.pushNamed(context, "MainPage");
            }, icon:  const Icon(Icons.volunteer_activism_outlined))
              
            ),
          ),
           BottomNavigationBarItem(
            label: "community",
            icon:
             IconButton(onPressed: (){
              Navigator.pushNamed(context, "MainPage");
            }, icon:  const Icon(Icons.chat_bubble_rounded))
          ),
        ],
      ),

      //app bar
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
            icon: Icon(
              Icons.search,
              size: Theme.of(context).appBarTheme.actionsIconTheme!.size,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.account_circle_outlined,
              size: Theme.of(context).appBarTheme.actionsIconTheme!.size,
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
const Padding(
  padding: EdgeInsets.only(left: 10),
  child:   Row(
    children: [
                Icon(Icons.favorite,color: Color.fromARGB(255, 255, 6, 6),size: 16,),
  
                SizedBox(width: 5,),
  
              Text("favorites", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 12)),
  
  ],),
),

            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: widget.carddetail["color"] as Color,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Stack(
                children: [
                  
                  Positioned(
                    right: 0,
                    top: 3,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert, color: Colors.black, size: 18),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const SizedBox(
                    height: 100,
                  ),
                        Text(
                          widget.carddetail["title"].toString(),
                          style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        const Row(
                          children: [
                            Icon(Icons.favorite, color: Colors.red),
                            Text("23332", style: TextStyle(color: Colors.white, fontSize: 12)),
                          ],
                        ),
                       
                      ],
                      
                    ),
                  ),
                  
                ],
                 
              ),
            ),
            const SizedBox(
                    height: 10,
                  ),
             Text(widget.carddetail["des"],style: const TextStyle(fontSize: 20),),
             const Row(
               children: [
                            Icon(Icons.chat_bubble_outline_outlined,color: Color.fromARGB(255, 0, 0, 0),size: 16,),
                            Text("91", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 12)),
                            SizedBox(width: 10,),
                             Icon(Icons.remove_red_eye_outlined, color: Color.fromARGB(255, 0, 0, 0),size: 16,),
                            Text("9341", style: TextStyle(color: Colors.black, fontSize: 12)),
                            Spacer(),
                            Icon(Icons.more_vert,color: Color.fromARGB(255, 0, 0, 0),size: 18,)
                          ],
             ),
             const SizedBox(
              height: 50,
             ),
            Expanded(
              child: ListView(
                children:   [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context) {
                        
                   return OrganizationsPage(organization: WaterConservationLorg,);
                      },));
                    },
                    child: Container(
                      decoration: BoxDecoration(border: Border.all(color:Colors.black,),borderRadius: BorderRadius.circular(13)),
                      width: 50,
                      height: 50,
                      child: const Center(child: Text("Organization",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),)),
                    ),
                  ),
                    const SizedBox(height: 10,),
                     InkWell(
                      onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(builder:(context) {
                            return EventPage(event: EventsData,);
                          },));
                        },
                       child: Container(
                                         decoration: BoxDecoration(border: Border.all(color:Colors.black,),borderRadius: BorderRadius.circular(13)),
                                         width: 50,
                                         height: 50,
                                         child: const Center(child: Text("Events",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),),
                                       ),
                     ),
                    const SizedBox(height: 10,),
                     InkWell(
                     onTap: () {Navigator.push(context, MaterialPageRoute(builder:(context) {
                          return LifeCoices(wasteLifecohice:wasteManagmentLifeChoices
                         );
                        },));
                    },   
                       child: Container(
                                         decoration: BoxDecoration(border: Border.all(color:Colors.black,),borderRadius: BorderRadius.circular(13)),
                                         width: 50,
                                         height: 50,
                                         child: const Center(child: Text("Life Choice",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold))),
                                       ),
                     ),
                ],
              ),
            )
          ],
        ),
        
      ),
    );
  }
}
