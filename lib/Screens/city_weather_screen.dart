import 'package:flutter/material.dart';
import '../widgets/custom_fragment.dart';

class CityWeatherScreen extends StatefulWidget {
  static String routeKey = 'CityWeatherScreen';
  @override
  _CityWeatherScreenState createState() => _CityWeatherScreenState();
}

class _CityWeatherScreenState extends State<CityWeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sunny.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    child: Text(
                      'Test the App',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: FlatButton(
                      onPressed: () {},
                      child: Icon(
                        Icons.search,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    'Today',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 35),
                  ),
                  Text(
                    'Wed, 30 Dec',
                    style: TextStyle(
                      color: Colors.red, //Color(0xFF616471),
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
              Weather(),
              Days(),
              CustomFragment(),
            ],
          ),
        ),
      ),
    );
  }
}

class Weather extends StatelessWidget {
  const Weather({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '-1°',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 75,
              ),
            ),
            Text(
              'c',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 50,
              ),
            )
          ],
        ),
        Text(
          'Feels like -3°',
          style: TextStyle(
              color: Colors.red /*Color(0xFF4D566F)*/,
              fontWeight: FontWeight.w600),
        )
      ],
    );
  }
}

class Days extends StatelessWidget {
  const Days({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Today',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Text(
                'Tomorrow',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black /*Color(0xFF787C89)*/,
                ),
              ),
              Text(
                'After tomorrow',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black /*Color(0xFF787C89)*/,
                ),
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.black,
        ),
        DayWeatherInDetails(),
      ],
    );
  }
}

class DayWeatherInDetails extends StatelessWidget {
  const DayWeatherInDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 6,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomCirculerContainer(
                textColor: Colors.white,
              ),
              CustomCirculerContainer(
                textColor: Colors.black /*Color(0xFF3B4155)*/,
              ),
              CustomCirculerContainer(
                textColor: Colors.black, //Color(0xFF3B4155),
              ),
              CustomCirculerContainer(
                textColor: Colors.black, //Color(0xFF3B4155),
              ),
              CustomCirculerContainer(
                textColor: Colors.black, //Color(0xFF3B4155),
              ),
              CustomCirculerContainer(
                textColor: Colors.black, //Color(0xFF3B4155),
              ),
              CustomCirculerContainer(
                textColor: Colors.black, //Color(0xFF3B4155),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCirculerContainer extends StatelessWidget {
  final Color textColor;
  CustomCirculerContainer({this.textColor});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Now',
          style: TextStyle(color: textColor),
        ),
        Container(
          width: MediaQuery.of(context).size.width / 8,
          height: MediaQuery.of(context).size.height / 9,
          child: Card(
            color: Colors.white24,
            child: Column(
              children: [
                Image.asset('assets/images/weather icons/10n@2x.png'),
                Text(
                  '-2°',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
          ),
        )
      ],
    );
  }
}
