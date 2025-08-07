import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int title = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.info, color: Colors.white, size: 24),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings, color: Colors.white, size: 24),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    title = 0;
                  });
                },
                icon: Icon(Icons.restart_alt, color: Colors.white, size: 24),
              ),
              /// bu icon lar ning vazifasi odamlarga xizmat ko'rsatish
            ],
          ),
          SizedBox(height: 200),
          Center(
            child: Text(
              "$title",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 200,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(height: 40),
          Center(
            child: Text(
              "         -12\nLimit Meached",
              style: const TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w500,
                fontSize: 18,
              ),
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: const EdgeInsets.all(3),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      title -= 1;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 47,
                    width: 47,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black87,
                    ),
                    child: Text(
                      "--",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(3),
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      title += 1;
                    });
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 47,
                    width: 47,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black87,
                    ),
                    child: Text(
                      "+",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
