import 'package:flutter/material.dart';
import 'package:todo_app/views/home_view.dart';
class CreateTodoView extends StatelessWidget {
  const CreateTodoView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.8),
       appBar: AppBar(
      //elevation: 0,
      backgroundColor: Colors.white,
      centerTitle: false,
      iconTheme: IconThemeData(color: Colors.black),
    
    //  leading: IconButton(onPressed: (){Navigator.of(context).push(MaterialPageRoute(builder: (context){return HomeView();}));}, icon: Icon(Icons.arrow_back), color: Colors.black,), 
      title: const Text(
        'New Todo',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800, color: Colors.black),),
      
),
body: Form(
child : ListView(
 padding: EdgeInsets.all(15),
        children: [
          TextFormField(keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Title", 
            hintText: "Please enter a title",
            focusedBorder: UnderlineInputBorder(),
          ),
          ),
          SizedBox(
            height: 30,
          ),
         
           TextFormField(keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: "Description", 
            hintText: "Type what you wanna do",
            focusedBorder: UnderlineInputBorder(),
          ),
          ),
          SizedBox(
            height: 30,
          ),

         Row(
         // mainAxisSize: MainAxisSize.min,
          children: [  
            
            Expanded(
              child: TextFormField(
                  
                 onTap: (){showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime.now(), lastDate: DateTime.now());},
                keyboardType: TextInputType.datetime,
                      decoration: InputDecoration(
              labelText: "Date", 
              hintText: "Please enter a date",
              focusedBorder: UnderlineInputBorder(),
                      ),
                      ),
            ),
          SizedBox(
            height: 30,
          ),
           
           Expanded(
             child: TextFormField(
              onTap: (){showTimePicker(context: context, initialTime: TimeOfDay.now());},
               keyboardType: TextInputType.number,
                     decoration: InputDecoration(
              labelText: "Time", 
              hintText: "Please enter a time",
              focusedBorder: UnderlineInputBorder(),
                     ),
                     ),
           ),
          SizedBox(
            height: 30,
          ),
            ]
              ),
               SizedBox(
            height: 30,
          ),
          TextButton(onPressed: (){}, child: Text("Create ToDo", style:TextStyle(fontSize:15,fontWeight: FontWeight.w800, color: Colors.blue),), ),

         ]
          ),
         ),
     );
  }
}
