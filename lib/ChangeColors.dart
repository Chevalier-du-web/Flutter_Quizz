import 'package:flutter/material.dart';

class ChangeColorsPage extends StatefulWidget {
  const ChangeColorsPage({Key? key}) : super(key: key);

  @override
  State<ChangeColorsPage> createState() => _ChangeColorsPageState();
}

class _ChangeColorsPageState extends State<ChangeColorsPage> {
  Color colorselected = Colors.black;
  var couleur = "noir";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jeu de couleur'),
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.only(top: 20),
                width: 280,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.black.withOpacity(.4),
                        width: 3),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade400,
                          offset: Offset(0,5),
                          blurRadius: 6,
                          spreadRadius: 4
                      ),
                    ]),
                child: Center(
                  child: Text("Le texte est ${couleur}",
                    style: TextStyle(fontSize: 27,fontWeight: FontWeight.bold,color: colorselected),),
                ),
              ),
            ),
            SizedBox(height: 15,),
            Divider(),
            Container(
              padding: EdgeInsets.all(28),
              decoration: BoxDecoration(
                color: Colors.teal,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade400,
                            offset: Offset(0,2),
                            blurRadius: 1,
                            spreadRadius: 4
                        ),
                      ]
                    ),
                    child:Column(
                      children: [
                        ElevatedButton(onPressed: (){
                          setState(() {
                            colorselected = Colors.red;
                            couleur = "rouge";
                          });
                        }, child: Text('Couleur rouge',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.red),
                            padding: MaterialStateProperty.all(EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10)),

                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12,),
                  //couleur bleue
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              offset: Offset(0,2),
                              blurRadius: 1,
                              spreadRadius: 4
                          ),
                        ]
                    ),
                    child:Column(
                      children: [
                        ElevatedButton(onPressed: (){
                          setState(() {
                            colorselected = Colors.blue;
                            couleur = "bleu";
                          });
                        }, child: Text('Couleur bleue',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.blue),
                            padding: MaterialStateProperty.all(EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10)),

                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12,),
                  //couleur bleue
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              offset: Offset(0,2),
                              blurRadius: 1,
                              spreadRadius: 4
                          ),
                        ]
                    ),
                    child:Column(
                      children: [
                        ElevatedButton(onPressed: (){
                          setState(() {
                            colorselected = Colors.green;
                            couleur = "vert";
                          });
                        }, child: Text('Couleur verte',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.green),
                            padding: MaterialStateProperty.all(EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10)),

                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12,),
                  //couleur bleue
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              offset: Offset(0,2),
                              blurRadius: 1,
                              spreadRadius: 4
                          ),
                        ]
                    ),
                    child:Column(
                      children: [
                        ElevatedButton(onPressed: (){
                          setState(() {
                            colorselected = Colors.yellow;
                            couleur = "jaune";
                          });
                        }, child: Text('Couleur jaune',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.yellow),
                            padding: MaterialStateProperty.all(EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10)),

                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 12,),
                  //couleur bleue
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              offset: Offset(0,2),
                              blurRadius: 1,
                              spreadRadius: 4
                          ),
                        ]
                    ),
                    child:Column(
                      children: [
                        ElevatedButton(onPressed: (){
                          setState(() {
                            colorselected = Colors.orange;
                            couleur = "orange";
                          });
                        }, child: Text('Couleur orange',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.orange),
                            padding: MaterialStateProperty.all(EdgeInsets.only(left: 43,right: 43,top: 10,bottom: 10)),

                          ),
                        )
                      ],
                    ),
                  ),SizedBox(height: 12,),
                  //couleur bleue
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              offset: Offset(0,2),
                              blurRadius: 1,
                              spreadRadius: 4
                          ),
                        ]
                    ),
                    child:Column(
                      children: [
                        ElevatedButton(onPressed: (){
                          setState(() {
                            colorselected = Colors.grey;
                            couleur = "gris";
                          });
                        }, child: Text('Couleur grise',
                          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.grey),
                            padding: MaterialStateProperty.all(EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10)),

                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}
