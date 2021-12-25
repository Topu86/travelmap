import 'package:flutter/material.dart';
import 'package:travelmap/banglaplace.dart';
class ddd extends StatefulWidget {
  String? continent;



  @override
  _dddState createState() => _dddState();

 ddd({this.continent});
}

class _dddState extends State<ddd> {
  List District = [
    ['Dhaka'],
    ['Faridpur'],
   [ 'Gazipur'],
   [ 'Gopalganj'],
   [ 'Jamalpur'],
   [ 'Kishoreganj'],
    ['Madaripur'],
    ['Manikganj'],
    ['Munshiganj'],
    ['Mymensingh'],
    ['Narayanganj'],
    ['Narsingdi'],
    ['Netrokona'],
    ['Rajbari'],
    ['Shariatpur'],
    ['Sherpur'],
    ['Tangail'],
    ['Bogra'],
    ['Joypurhat'],
    ['Naogaon'],
    ['Natore'],
    ['Nawabganj'],
    ['Pabna'],
    ['Rajshahi'],
    ['Sirajgonj'],
    ['Dinajpur'],
    ['Gaibandha'],
    ['Kurigram'],
    ['Lalmonirhat'],
    ['Nilphamari'],
    ['Panchagarh'],
    ['Rangpur'],
    ['Thakurgaon'],
    ['Barguna'],
    ['Barisal'],
    ['Bhola'],
    ['Jhalokati'],
    ['Patuakhali'],
    ['Pirojpur'],
    ['Bandarban'],
    ['Brahmanbaria'],
    ['Chandpur'],
    ['Chittagong'],
    ['Comilla'],
    [' Cox''s Bazar'],
    ['Feni'],
    ['Khagrachari'],
    ['Lakshmipur'],
    ['Noakhali'],
    ['Rangamati'],
    ['Habiganj'],
    ['Maulvibazar'],
    ['Sunamganj'],
    ['Sylhet'],
    ['Bagerhat'],
    ['Chuadanga'],
    ['Jessore'],
    ['Jhenaidah'],
    ['Khulna'],
    ['Kushtia'],
    ['Magura'],
    ['Meherpur'],
    ['Narail'],
   ['Satkhira'],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('${widget.continent}'),centerTitle: true,),
      body: GridView.builder(gridDelegate:
      SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
      ),
          itemCount: District.length,
          itemBuilder: (context,index){
            return InkWell(
              onTap: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>ppp(
                  )));
              },
              child: Container(
                       height: 5,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    borderRadius: BorderRadius.circular(5)
                ),
                child: Column(
                  children: [
                    Text(District[index][0])
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}
