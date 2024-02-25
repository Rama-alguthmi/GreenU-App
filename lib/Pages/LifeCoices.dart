// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class LifeCoices extends StatelessWidget {
  List<Map<String,Object>> wasteLifecohice;
  LifeCoices({
    Key? key,
    required this.wasteLifecohice,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Life Choices",
        style: TextStyle(fontSize: 20),),
        actions: [IconButton(onPressed: (){},
        icon: const Icon(Icons.search))],),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: ListView.builder(itemCount: wasteLifecohice.length ,itemBuilder:(context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      decoration: BoxDecoration(
                     color: const Color.fromARGB(81, 202, 202, 202),
                     borderRadius: BorderRadius.circular(13)

                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text("#${index+1}",style: const TextStyle(color: Colors.purple,fontWeight: FontWeight.bold,fontSize: 20) ,),
                          ),
                          const SizedBox(width: 20,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment:CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Text(wasteLifecohice[index]["title"].toString(),style: const TextStyle(color: Colors.purple,fontWeight: FontWeight.bold),),
                              Text(wasteLifecohice[index]["des"].toString()),
                              const Row(
                            children: [
                       Icon(Icons.chat_bubble_outline_outlined,color: Color.fromARGB(255, 0, 0, 0),size: 16,),
                              Text("91", style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 12)),
                               Icon(Icons.remove_red_eye_outlined, color: Color.fromARGB(255, 0, 0, 0),size: 16,),
                              Text("9341", style: TextStyle(color: Colors.black, fontSize: 12)),
                              SizedBox(width: 230,),
                              Icon(Icons.more_vert,color: Color.fromARGB(255, 0, 0, 0),size: 18,)],
                          ),
                                const SizedBox(height: 15,),
                  
                            ],
                            
                          ),
                                   
                  
                        ],
                      ),
                  
                    ),
                  );
                },),
              )
            ],
          ),
        ),
    );
  }
}
