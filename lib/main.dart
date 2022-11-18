import 'package:flutter/material.dart';

import 'ChangeColors.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //variables du jeu ...
  var score = 0;
  var Qi = 0;
  var Questions = [
    {
      'question':'Quelle est la premiere lettre de l\'alphabet francais?',
      'prop1':'la lettre W',
      'prop2':'la lettre A',
      'prop3':'la lettre T'
    },
    {
      'question':'Qui a fait le tour du monde ? ',
      'prop1':' Brandon',
      'prop2':'Sangokou',
      'prop3':'Christophe Colomb',
    },
    {
      'question':'Quel est le drapeau du Cameoun? ',
      'prop1':'Vert-Rouge-Jaune',
      'prop2':'Rouge-Bleu-Jaune',
      'prop3':'Vert-Noir-Rouge',
    },
    {
      'question':'La somme de 20 - 25 est ? ',
      'prop1':'5',
      'prop2':'0',
      'prop3':'-5',
    },
    {
      'question':'Quel langage de programmation Flutter utilise t-il ? ',
      'prop1':'Javascript',
      'prop2':'Dart',
      'prop3':'Python',
    }
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' QUIZZ APP',style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
        actions: [
          Container(
            margin: EdgeInsets.only(top: 19),
              child: Text("Jeu de couleurs",style: TextStyle(fontSize: 20),)),
                IconButton(onPressed: ()=>Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ChangeColorsPage())),
                    icon: Icon(Icons.games_outlined))
        ],
      ),
      // tant que toutes les questions ne sont pas repondues , on reste sur la page de question..
      body: Qi<=4?
        Container(
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.all(20),
        child: Column(
          children: [

            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.teal,width: 3)
              ),
              child: Center(child: Text("Question ${Qi+1} :${Questions[Qi]['question']}",
                style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)),
            ),

            SizedBox(height: 40,),
            Divider(color: Colors.deepOrangeAccent,),
            SizedBox(height: 40,),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: (){
                    //condition de changement de question
                    if(Qi==2){
                      score +=1;
                    }

                    setState(() {
                      Qi +=1;
                    });
                  },
                      child: Text("${Questions[Qi]['prop1']}",style: TextStyle(fontSize: 18,color: Colors.white),),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                        padding: MaterialStateProperty.all(EdgeInsets.only(left: 50,right: 50,top: 15,bottom: 15)),

                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: (){
                    if (Qi==0){
                      score +=1;
                    }else if(Qi==4){
                      score +=1;
                    }
                    setState(() {
                      Qi +=1;
                    });
                  },
                      child: Text("${Questions[Qi]['prop2']}",style: TextStyle(fontSize: 18,color: Colors.white)),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                        padding: MaterialStateProperty.all(EdgeInsets.only(left: 50,right: 50,top: 15,bottom: 15)),

                      )
                  ),

                ),
              ],
            ),
            SizedBox(height: 20,),

            Row(
              children: [
                Expanded(
                  child: ElevatedButton(onPressed: (){
                    if (Qi==1){
                      score +=1;
                    }else if(Qi==3){
                      score +=1;
                    }
                    setState(() {
                      Qi +=1;
                    });
                  },
                      child: Text("${Questions[Qi]['prop3']}",style: TextStyle(fontSize: 18,color: Colors.white)),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.blueAccent),
                        padding: MaterialStateProperty.all(EdgeInsets.only(left: 50,right: 50,top: 15,bottom: 15)),

                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            Divider(),
            SizedBox(height: 20,),


          ],
        ),
      ):Container(
        child: Column(
          children: [
            SizedBox(height: 70,),
            Center(
              child: Container(
                width: 280,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.teal,width: 3)
                ),
                child: Center(child: Text("RESULTAT",
                  style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: 50,),
            Container(
              child: Column(
                children: [
                  Text("Votre score est de : ${score} /5 .",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                  SizedBox(height: 30,),

                  Text("Niveau :Votre niveau est  : "
                  // verification du score afin d'afficher le niveau ...
                      "${score==5?"Parfait"
                      :score==0?"nul"
                      :score>0 &&score<3?"faible"
                      :score==3?"passable"
                      :"bien"} !",
                        style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),

                ],
              ),
            ),
            SizedBox(height: 60,),

            ElevatedButton(onPressed: (){
              setState(() {
                score = 0;
                Qi = 0;
              });

            }, child: Text('Refaire une partie ?',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
                padding: MaterialStateProperty.all(EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10)),

              ),
            )
          ],
        ),
      )
    );
  }
}













// Column(
// children: [
// SizedBox(height: 70,),
// Container(child: Center(
// child: Text("Liste des couleurs ",style: TextStyle(fontSize: 27),)
// )
// ),
// SizedBox(height: 30,),
// Center(child: Text("Couleur rouge",
// style: TextStyle(color: Colors.red,fontSize: 24),)
// ),
// SizedBox(height: 30,),
// Center(child: Text("Couleur blue",
// style: TextStyle(color: Colors.blue,fontSize: 24),)
// ),
// SizedBox(height: 30,),
// Center(child: Text("Couleur orange",
// style: TextStyle(color: Colors.orange,fontSize: 24),)
// ),
// SizedBox(height: 30,),
// Center(child: Text("Couleur verte",
// style: TextStyle(color: Colors.green,fontSize: 24),)
// ),
// SizedBox(height: 30,),
// Center(child: Text("Couleur grise",
// style: TextStyle(color: Colors.grey,fontSize: 24),)
// ),
// SizedBox(height: 30,),
// ElevatedButton(onPressed: (){
// print('le bouton est selectionne ... merci ...!!!');
// },
//
// child: Text("Valider", style: TextStyle(fontSize: 24),))
// ],
// ),

