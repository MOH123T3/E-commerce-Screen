import 'package:flutter/material.dart';

class  FOod extends StatelessWidget  {
  @override 
  Widget build (BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.black,
     body: Column(
       
       children: [
       Container(
         padding: EdgeInsets.all(46),
         height: 131,
         child: Row(
           
           mainAxisAlignment: MainAxisAlignment.spaceBetween,

           children: [
             Text('Dishes',style: TextStyle(fontSize: 20,color: Colors.white),),
 
      TextButton(onPressed: (){}, child: Text('View More',style: TextStyle(fontSize: 15,color: Colors.red),))
        
           ],
         ),
       ),
       Container(
          margin: const EdgeInsets.symmetric(vertical: 1.0),
          height: 200.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
               Container(
            padding: EdgeInsets.all(5),
         child: Image(image: NetworkImage('https://www.porschestevenscreek.com/blogs/3563/wp-content/uploads/2021/01/3-Amazing-Vegetarian-Restaurants-in-Santa-Clara-CA-768x512.jpg'),
         
         ),  ),
                   Container(
            padding: EdgeInsets.all(5),
         child: Image(image: NetworkImage('http://kitchen8.com.au/wp-content/uploads/2020/01/flat-lay-photography-of-vegetable-salad-on-plate-1640777-300x183.jpg'),
         
         ),  ),     Container(
            padding: EdgeInsets.all(5),
         child: Image(image: NetworkImage('https://s3.envato.com/files/238628108/DSC_0745111.jpg'),
         
         ),  ),     Container(
            padding: EdgeInsets.all(5),
         child: Image(image: NetworkImage('https://previews.123rf.com/images/timolina/timolina1704/timolina170400043/75487418-salad-of-fresh-vegetables-in-greek-style-dietary-menu-proper-nutrition-flat-lay-top-view.jpg'),
         
         ),  ),     Container(
            padding: EdgeInsets.all(5),
         child: Image(image: NetworkImage('https://previews.123rf.com/images/timolina/timolina1508/timolina150800023/43877583-greek-salad-with-fresh-vegetables-feta-cheese-and-black-olives.jpg'),
         
         ),  ),     Container(
            padding: EdgeInsets.all(5),
         child: Image(image: NetworkImage('https://previews.123rf.com/images/timolina/timolina1508/timolina150800011/43879466-greek-salad-with-fresh-vegetables-feta-cheese-and-black-olives.jpg'),
         
         ),  ),     Container(
            padding: EdgeInsets.all(5),
         child: Image(image: NetworkImage('https://previews.123rf.com/images/timolina/timolina1702/timolina170200122/70920122-greek-salad-with-fresh-tomato-cucumber-red-onion-basil-lettuce-feta-cheese-black-olives-and-a-italia.jpg'),
         
         ),  ),     Container(
            padding: EdgeInsets.all(5),
         child: Image(image: NetworkImage('https://previews.123rf.com/images/timolina/timolina1409/timolina140900197/32055836-greek-salad-with-feta-cherry-tomatoes-and-black-olives.jpg'),
         
         ),  ),

 






       ],
     ),

    ),

     
       Container(
         child: Column(

           mainAxisAlignment: MainAxisAlignment.start,
           children: [

         Container(
           child: 
           Row(
             children: [
                            Icon(Icons.star_border_outlined,color: Colors.yellow,),
                          Icon(Icons.star_border_outlined,color: Colors.yellow,),
                                       Icon(Icons.star_border_outlined,color: Colors.yellow,),
                                                                 Icon(Icons.star_border_outlined,color: Colors.yellow,),

                          Icon(Icons.star_border_outlined,color: Colors.yellow,),


             ],
           ),
         )
    

           ],
         ),
       ),


       Container(
         padding: EdgeInsets.all(15),
         child: Text(' Popular items', style: TextStyle(fontSize: 20,color: Colors.white,
         ),),
       ),
      Container(
        padding: EdgeInsets.symmetric(vertical: (5)),
          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 160.0,
          
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container(
               child: Column(
                 children: [
                   Container(
                      alignment: Alignment.center,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
                 image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/photos/mug-on-plate-filled-with-coffee-surrounded-by-coffee-beans-picture-id157528129?b=1&k=20&m=157528129&s=170667a&w=0&h=8DLweTb1F3_rJFKpHn9ha8aIiQQDAJKdX5y2pR63VsA='),fit: BoxFit.cover)
                  
               ),
               
               padding: EdgeInsets.all(50),
               margin: EdgeInsets.all(14),
               
                   ),
                   
                   Text('Coffee', style: TextStyle(fontSize: 15,color: Colors.white),)
                 ],
               ),
               
               
              ),
                Container(
               child: Column(
                 children: [
                   Container(
                      alignment: Alignment.center,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
                 image: DecorationImage(image: NetworkImage('https://im1.dineout.co.in/images/uploads/restaurant/sharpen/9/d/j/p96286-1630497036612f690c09d67.jpg?tr=tr:n-xlarge'),fit: BoxFit.cover)
                  
               ),
               
               padding: EdgeInsets.all(50),

               margin: EdgeInsets.all(14),
                   ),
                   
                   Text(' Pizza', style: TextStyle(fontSize: 15,color: Colors.white),)
                 ],
               ),
               
               
              ),   Container(
               child: Column(
                 children: [
                   Container(
                      alignment: Alignment.center,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
                 image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/photos/cheese-paneer-kathi-roll-or-wrap-vegetarians-indian-food-picture-id1251257258?s=2048x2048'),fit: BoxFit.cover)
                  
               ),
               
               padding: EdgeInsets.all(50),

               margin: EdgeInsets.all(14),
                   ),
                   
                   Text(' Roll ', style: TextStyle(fontSize: 15,color: Colors.white),)
                 ],
               ),
               
               
              ),   Container(
               child: Column(
                 children: [
                   Container(
                      alignment: Alignment.center,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
                 image: DecorationImage(image: NetworkImage('https://www.tarladalal.com/members/9306/procstepimgs/veg-manchurian-dry-recipe-(2)-3-191684.jpg'),fit: BoxFit.cover)
                  
               ),
               
               padding: EdgeInsets.all(50),

               margin: EdgeInsets.all(14),
                   ),
                   
                   Text('Manchurian', style: TextStyle(fontSize: 15,color: Colors.white),)
                 ],
               ),
               
               
              ),   Container(
               child: Column(
                 children: [
                   Container(
                     
                      alignment: Alignment.center,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
                 image: DecorationImage(image: NetworkImage('https://www.indianhealthyrecipes.com/wp-content/uploads/2018/07/pulao-recipe-500x500.jpg'),fit: BoxFit.cover)
                  
               ),
               
               padding: EdgeInsets.all(50),
       margin: EdgeInsets.all(14),
               
                   ),
                   
                   Text(' Pulao ', style: TextStyle(fontSize: 15,color: Colors.white),)
                 ],
               ),
               
               
              ),   Container(
               child: Column(
                 children: [
                   Container(
                      alignment: Alignment.center,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
                 image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/photos/delicious-homemade-hamburger-and-french-fries-picture-id1254672762?b=1&k=20&m=1254672762&s=170667a&w=0&h=nKrG40G2jj9O8wzJ8wDD2zmUKNp00mcdVWK_f_zixug='),fit: BoxFit.cover)
                  
               ),
               
               padding: EdgeInsets.all(50),
margin: EdgeInsets.all(14),
               
                   ),
                   
                   Text(' Burger ', style: TextStyle(fontSize: 15,color: Colors.white),)
                 ],
               ),
               
               
              ),   Container(
               child: Column(
                 children: [
                   Container(
                      alignment: Alignment.center,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
                 image: DecorationImage(image: NetworkImage('https://www.lacademie.com/wp-content/uploads/2021/04/fresh-color-juices-smoothie-800x600.jpg'),fit: BoxFit.cover)
                  
               ),
               
               padding: EdgeInsets.all(50),

               margin: EdgeInsets.all(14),
                   ),
                   
                   Text(' Juice ', style: TextStyle(fontSize: 15,color: Colors.white),)
                 ],
               ),
               
               
              ),   Container(
               child: Column(
                 children: [
                   Container(
                      alignment: Alignment.center,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
                 image: DecorationImage(image: NetworkImage('https://www.vegrecipesofindia.com/wp-content/uploads/2013/07/naan-recipe-2-500x500.jpg'),fit: BoxFit.cover)
                  
               ),
               
               padding: EdgeInsets.all(50),
margin: EdgeInsets.all(14),
               
                   ),
                   
                   Text(' Naan', style: TextStyle(fontSize: 15,color: Colors.white),)
                 ],
               ),
               
               
              ),   Container(
               child: Column(
                 children: [
                   Container(
                      alignment: Alignment.center,
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
                 image: DecorationImage(image: NetworkImage('https://thechutneylife.com/wp-content/uploads/2017/09/Veg-Hakka-Noodles-The-Chutney-Life-1.jpg'),fit: BoxFit.cover)
                  
               ),
               
               padding: EdgeInsets.all(50),
margin: EdgeInsets.all(14),
               
                   ),
                   
                   Text(' Noodles ', style: TextStyle(fontSize: 15,color: Colors.white),)
                 ],
               ),
               
               
              ),
           

 






       ],
     ),

    ),


    Container(

      
      height: 145,
      padding: EdgeInsets.all(54),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      image: DecorationImage(image: NetworkImage('https://st2.depositphotos.com/1002191/8495/v/950/depositphotos_84953674-stock-illustration-courier-rides-on-scooter-colored.jpg?forcejpeg=true'),
      fit: BoxFit.cover
      )
      ),

       ) ,

       Container(
         padding: EdgeInsets.all(13),
         
        
      child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
            TextButton(onPressed: (){}, child:Text('Order Now',style: TextStyle(color: Colors.yellow),)),
           TextButton(onPressed: (){
             Navigator.pop(context);
           }, child:Text('GO Back')),


        ],
      ),

       ) 
       ] 
    
    )
    );
  }
  
}