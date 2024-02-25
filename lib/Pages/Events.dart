// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class EventPage extends StatefulWidget {
      List<Map<String,Object>> event;

   EventPage({
    Key? key,
    required this.event,
  }) : super(key: key);

  @override
  State<EventPage> createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
appBar: AppBar(
        centerTitle: true,
        title: const Text("Events",
        style: TextStyle(fontSize: 20),),
        actions: [IconButton(onPressed: (){},
        icon: const Icon(Icons.search))],),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(scrollDirection: Axis.vertical,itemCount:  widget.event.length,itemBuilder:(context, index) {
              return  Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      
                      Positioned(
                        left: 0,
                        top: 3,
                        child: IconButton(
                          onPressed: () {},
                          icon: const Row(
                            children: [
                              Icon(Icons.favorite, color: Color.fromARGB(255, 255, 20, 20), size: 18),
                              SizedBox(width: 10,),
                              Text("favorite",style: TextStyle(fontWeight: FontWeight.bold),)
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const SizedBox(
                        height: 300,
                      ),
                            Text(
                              widget.event[index]["title"].toString(),
                              style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 5),
                          
                          
                             Row(
                              children: [
                                Text(widget.event[index]["city"].toString(),style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold),),
                                 const Text(" - "),
                                  Text(widget.event[index]["time"].toString(),style: const TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(height: 5),
                               const Row(
                            children: [
                       Icon(Icons.chat_bubble_outline_outlined,color: Color.fromARGB(255, 0, 0, 0),size: 16,),
                              Text("91", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 12)),
                              SizedBox(width: 10,),
                               Icon(Icons.remove_red_eye_outlined, color: Color.fromARGB(255, 0, 0, 0),size: 16,),
                              Text("9341", style: TextStyle(color: Colors.black, fontSize: 12)),
                               Spacer(),
                              Icon(Icons.more_vert,color: Color.fromARGB(255, 0, 0, 0),size: 18,)],
                          ),
                          ],
                          
                        ),
                      ),
                      
                    ],
                     
                  ),
                ),
              ) ;
            },),
          )
        ],
      ),
    );
  }
}