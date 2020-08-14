import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'custom_widget/bottom_navigation_bar.dart';
import 'constants.dart';
import 'package:flutter_share_me/flutter_share_me.dart';
void main() => runApp(ForYouScreen());

class ForYouScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(top: 30.0),
                height: 150.0,
                decoration:BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey[300],
                        offset:Offset(0,5),
                        blurRadius: 5,
                        spreadRadius: 2.0,
                      )
                    ]
                ),
                child: Padding(
                  padding:EdgeInsets.symmetric(horizontal:15.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        ///
                        ///
                        /// Title bar
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text('meesho',style: TextStyle(color: Colors.pinkAccent,fontSize: 25.0)),
                                  ],
                                ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.favorite,color: Colors.black,size:iconSize,),
                                SizedBox(width: 30,),
                                Icon(Icons.shopping_cart,color: Colors.black,size: iconSize,)
                              ],
                            )
                          ],
                        ),
                        ///
                        ///
                        /// Search Bar
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Colors.grey[80],
                            filled: true,
                            prefixIcon: Icon(Icons.search,color: Colors.black,),
                            suffixIcon: Icon(Icons.camera_alt,color: Colors.black,size: iconSize,),
                            hintText: 'Search by product code',
                            border: OutlineInputBorder(
                            borderSide: BorderSide.none
                            ),
                          ),
                        )
                          ],
                        ),
                  ),
                )
              ),
              SizedBox(height: 15,),
              ///
              ///
              /// Product Categories
              Container(
                height: 450,
                child: ListView(
                  children: <Widget>[
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(height: 80,width: 130,color: Colors.pinkAccent,),
                          Container(height: 80,width: 130,color: Colors.black,),
                          Container(height: 80,width: 130,color: Colors.blueAccent,),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.grey[50],
                      child: Padding(
                        padding: EdgeInsets.all(15.0),
                        child: Container(
                          width: 400,
                          height: 300,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey[300],
                                  offset:Offset(0,5),
                                  blurRadius: 5,
                                  spreadRadius: 2.0,
                                )
                              ]
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text('Select a category you would like to try'),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  ProductCategories(productName: 'Saree', productImage: 'images/saree.png', onPressed: null,),
                                  ProductCategories(productName: 'Kurti', productImage: 'images/kurti.png', onPressed: null,),
                                  ProductCategories(productName: 'Men\'s Wear', productImage: 'images/Mens wear.PNG', onPressed: null,),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  ProductCategories(productName: 'Jewellery', productImage: 'images/Jewellery.png', onPressed: null,),
                                  ProductCategories(productName: 'Suits', productImage: 'images/Suits.png', onPressed: null,),
                                  ProductCategories(productName: 'Western Wear', productImage: 'images/Western Wear.png', onPressed: null,),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    ///
                    ///
                    /// Product details
                    Container(
                      height: 330,
                      decoration: BoxDecoration(
                          color: Colors.white,
                        border: Border(
                          top: BorderSide(
                            color: Colors.black,
                            width: 1.5
                          ),
                            bottom: BorderSide(
                                color: Colors.black,
                                width: 1.5
                            )
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 150,
                                child:Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: <Widget>[
                                    Container(
                                        child: Image.asset('images/1.png',)),
                                    Column(
                                      children: <Widget>[
                                        Container(
                                          height: 75,
                                            child: Image.asset('images/2.png',scale: 10,)),
                                        Container(
                                            height: 75,
                                            child: Image.asset('images/3.png',scale: 10,)),

                                      ],
                                    )
                                  ],
                                )
                            ),
                            SizedBox(height: 15,),
                            Text('Abhisarike Drishya Kurtis'),
                            SizedBox(height: 10,),
                            Text('Starting from \$ 499'),
                            SizedBox(height: 10,),
                            Container(
                              height: 40,
                              width: 150,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: <Widget>[
                                  Icon(Icons.directions_bus),
                                  Text('Free Shipping')
                                ],
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[300]
                              ),
                            ),
                            Divider(color: Colors.black,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                Container(
                                  height: 45,
                                  width: 180,
                                  child: GestureDetector(
                                        onTap: () {},
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.dialer_sip,color: Colors.green,),
                                        Text('Share Now',style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)
                                      ],
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                      width: 1.5,
                                      color: Colors.green
                                    )
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){},
                                  child: Container(
                                    height: 45,
                                    width: 180,
                                    decoration: BoxDecoration(
                                        color: Colors.pinkAccent,
                                      borderRadius: BorderRadius.circular(5.0)
                                    ),
                                    child: Center(child: Text('View products',style: TextStyle(color: Colors.white),)),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                  ],
                ),
        ),


        bottomNavigationBar: CustomBottomNavigationBar(),
      )
    );
  }
}


///
///
/// Categories you would like
class ProductCategories extends StatelessWidget {
  String productName;
  final productImage;
  Function onPressed;
  ProductCategories({this.productName,this.productImage,@required this.onPressed });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(productImage),
        ),
        SizedBox(height: 10,),
        Text(productName)
      ],
    );
  }
}

///
///
/// Product Details Screen
class ProductDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        color: Colors.pinkAccent,
        child: Text('Product details'),
      ),
    );
  }
}
