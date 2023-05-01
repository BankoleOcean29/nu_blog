import 'package:flutter/material.dart';

class ArticleOne extends StatefulWidget {
  const ArticleOne({Key? key}) : super(key: key);

  @override
  State<ArticleOne> createState() => _ArticleOneState();
}

class _ArticleOneState extends State<ArticleOne> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff01579B),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              const Text('What\'s a Stateful widget?', style: TextStyle(fontSize: 80, fontFamily: 'Mali'),),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 120.0, right: 90),
                child: Container(
                  child: Column(
                    children: const [
                      Text('''Flutter is a popular cross-platform mobile app development framework that allows developers to create high-quality, native-looking apps for both iOS and Android platforms. One of the core concepts in Flutter is the widget, which is essentially a building block for creating user interfaces in the app.
A stateful widget is a type of widget that is used to build UI components that have a mutable state, meaning that they can change their appearance or behavior in response to user input or other events. In this essay, we'll take a closer look at stateful widgets and their lifecycle in Flutter.''', style: TextStyle(fontFamily: 'Mali', fontSize: 25, height: 2),),

                      SizedBox(height: 50,),


                      Text('''To understand stateful widgets and their lifecycle, let's use an analogy. Imagine you're building a house, and the stateful widget is a room in the house. The room has some furniture in it, and you want to be able to change the position or color of the furniture based on different events, such as a guest arriving or a change in the weather. The stateful widget is like the room, and the state of the widget is like the furniture inside the room. 
Now, let's take a look at the lifecycle of a stateful widget in Flutter.''', style: TextStyle(fontFamily: 'Mali', fontSize: 25, height: 2),),

                      SizedBox(height: 100,),


                      Text(''' There are several key stages that a stateful widget goes through during its lifetime, and each stage has its own set of methods and callbacks that allow the widget to interact with the rest of the app.
     
     1. Initialization: When a stateful widget is first created, the framework calls its constructor and initializes its state. This is like building the room and placing the furniture inside it for the first time.
     
     2. Mounted: Once the widget is initialized, it is mounted, which means it is added to the widget tree and becomes visible on the screen. This is like opening the door to the room and allowing people to enter and see the furniture.
                        
     3. Updating: As the state of the widget changes, the framework calls the build() method of the widget, which rebuilds the UI with the new state. This is like rearranging the furniture in the room based on the current conditions, such as adding a blanket to the couch on a cold day.
                        
     4. Deactivation: When the widget is no longer needed or is removed from the widget tree, the framework calls the deactivate() method, which allows the widget to do some cleanup before it is destroyed. 
This is like closing the door to the room and cleaning up any messes before leaving.
                        
     5. Disposal: Finally, when the widget is no longer needed, the framework calls the dispose() method, which completely removes the widget from memory. This is like demolishing the room and removing all the furniture from it.
             ''', style: TextStyle(fontFamily: 'Mali', fontSize: 25, height: 1),),

                      SizedBox(height: 100,),


                      Text('''Overall, the lifecycle of a stateful widget in Flutter is all about managing the state of the widget and updating the UI in response to changes in that state. By understanding this lifecycle, developers can create more efficient and effective UI components in their apps.''', style: TextStyle(fontFamily: 'Mali', fontSize: 25, height: 2),),

                      SizedBox(height: 100,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
