import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List numMenu = ['1','2','3','4','5','6','7','8','9','10'];
  String _selectedNum = '1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.orange),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          menuCard('images/pizza.jpg', 'Pizza'),
          menuCard('images/burger.jpg', 'Burger'),
          menuCard('images/potatos.jpg', 'Potato'),
          menuCard('images/shawrma.jpg', 'Shawerma'),
        ],
      ),
    );
  }

  Widget menuCard(image,name){
    return Card(
      color: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.center ,
            children: [
              Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(image,alignment: Alignment.center,),
                  )
              ),
              SizedBox(width: 5,),
              DropdownButton(
                value: _selectedNum,
                onChanged: (val){
                  setState(() {
                    _selectedNum = val;
                  });
                },
                items: numMenu.map((item){
                  return DropdownMenuItem(child: Text(item,style: TextStyle(fontSize: 12,color: Colors.black),),
                  value: item,);
                }).toList(),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(name,style: TextStyle(fontSize: 20,color: Colors.black),) ,
        ],
      ),
    );
  }
}
