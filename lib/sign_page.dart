import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:menu_app/menu.dart';

class SignPage extends StatefulWidget {

  @override
  _SignPageState createState() => _SignPageState();
}

class _SignPageState extends State<SignPage> {
  bool _showPassword = false;

  void _toggle(){
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade100,
      appBar: AppBar(
        title: Text('Sign up',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.brown),),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 60,),
                Center(
                  child: Text('Sign up',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),
                    textAlign: TextAlign.center,),
                ),

                SizedBox(height: 50,),

                edit('User Name',Icons.account_circle,TextInputType.name),

                reqText(),

                SizedBox(height: 30),

                edit('Email',Icons.mail, TextInputType.emailAddress),

                reqText(),

                SizedBox(height: 30),

                TextField(
                  obscureText:!_showPassword ,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: ('Password'),
                      hintText: ('password'),
                      border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
                      suffixIcon: GestureDetector(
                        onTap: (){
                          _toggle();
                        },
                        child: Icon(Icons.remove_red_eye),
                      )
                  ),
                ),

                reqText(),

                SizedBox(height: 30),

                Center(
                  child: RaisedButton(
                    child: Text('Create account',style: TextStyle(color: Colors.brown,fontSize: 20),),
                    color: Colors.cyanAccent.shade400,
                    onPressed: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Menu()));
                    },
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget edit(String name,Icons,TextInputType){
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons),
        labelText: (name),
        hintText: (name),
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(50))),
      ),
      keyboardType: TextInputType,
    );
  }

  Widget reqText(){
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Text('Required',style: TextStyle(color: Colors.blueGrey)),
    );
  }
}
