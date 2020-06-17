import 'package:flutter/material.dart';

class Mapel extends StatelessWidget {
  final String name;
  final String guru1;
  final String guru2;
  final int backColor;

  Mapel({
    Key key,
    @required this.name,
    @required this.guru1,
    @required this.guru2,
    @required this.backColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Flexible(
            flex: 3,
            child: Container(
              padding: EdgeInsets.fromLTRB(15, 15, 20, 15),
              decoration  : new BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight:  Radius.circular(40), 
                  bottomRight: Radius.circular(40),
                ),
                color: Color(backColor),
              ),  
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Text(
                      name,                          
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(                    
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Icon(
                        Icons.looks_one,
                        size: 45,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            child: Container(
              child: Stack(
                children: <Widget>[
                  guru1 != ''? Positioned(
                    child: Container(
                      width: 55.0,
                      height: 55.0,
                      decoration: new BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          shape: BoxShape.circle,
                          image: new DecorationImage(
                              fit: BoxFit.cover,
                              image: new NetworkImage(guru1)
                          )
                      )
                    ),
                  ) : Container(),
                  guru2 != ''? Positioned(
                    left: 40,
                    child: Container(
                      width: 55.0,
                      height: 55.0,
                      decoration: new BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 2, color: Colors.white),
                        image: new DecorationImage(
                            fit: BoxFit.cover,
                            image: new NetworkImage(guru2)
                        )
                      )
                    ),
                  ) : Container(),
                ],
              ),
            )
          )
        ],
      ),
    );
  }
}