import 'package:flutter/material.dart';

void main() {
  runApp(GameApp());
}

class GameApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GameHomePage(),
    );
  }
}

class GameHomePage extends StatelessWidget {

  bool isMusic = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/background.png"),
                // Ganti dengan gambar latar belakang Anda
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Title
          Positioned(
            top: 60,
            left: 0,
            right: 0,
            child: Column(
              children: [
                Text(
                  'GAME EDUKASI',
                  style: TextStyle(
                    fontSize: 36,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Lalu lintas',
                  style: TextStyle(
                    fontSize: 44,
                    color: Colors.yellow[700],
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                        offset: Offset(2, 2),
                        blurRadius: 4,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Buttons
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Belajar',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Permainan',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Top Icons
          Positioned(
            top: 20,
            left: 20,
            child: Row(
              children: [
               Column(
                 children: [
                   ElevatedButton(
                     onPressed: () {},
                     style: ElevatedButton.styleFrom(
                       primary: Colors.green,
                       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),
                       elevation: 8, // Menambahkan shadow
                       shadowColor: Colors.black, // Warna shadow
                     ),
                     child: Icon(Icons.person, color: Colors.white),
                   ),
                   Text('Profile', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                     shadows: [
                       Shadow(
                         offset: Offset(1.5, 1.5), // Posisi bayangan
                         blurRadius: 3, // Intensitas blur pada bayangan
                         color: Colors.black.withOpacity(0.7), // Warna bayangan sedikit transparan
                       ),
                     ],))
                 ],
               ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        setState(){

                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 8, // Menambahkan shadow
                        shadowColor: Colors.black, // Warna shadow
                      ),
                      child: Icon(Icons.music_note, color: Colors.white),
                    ),
                    Text( isMusic ? 'Musik Off' : 'Musik On' , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(1.5, 1.5), // Posisi bayangan
                          blurRadius: 3, // Intensitas blur pada bayangan
                          color: Colors.black.withOpacity(0.7), // Warna bayangan sedikit transparan
                        ),
                      ],))
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 20,
            right: 20,
            child:Row(
              children: [
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 8, // Menambahkan shadow
                        shadowColor: Colors.black, // Warna shadow
                      ),
                      child: Icon(Icons.emoji_events, color: Colors.white),
                    ),
                    Text('Skor', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(1.5, 1.5), // Posisi bayangan
                          blurRadius: 3, // Intensitas blur pada bayangan
                          color: Colors.black.withOpacity(0.7), // Warna bayangan sedikit transparan
                        ),
                      ],))
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 8, // Menambahkan shadow
                        shadowColor: Colors.black, // Warna shadow
                      ),
                      child: Icon(Icons.info, color: Colors.white),
                    ),
                    Text('Info', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(1.5, 1.5), // Posisi bayangan
                          blurRadius: 3, // Intensitas blur pada bayangan
                          color: Colors.black.withOpacity(0.7), // Warna bayangan sedikit transparan
                        ),
                      ],))
                  ],
                ),
                SizedBox(width: 10),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        elevation: 8, // Menambahkan shadow
                        shadowColor: Colors.black, // Warna shadow
                      ),
                      child: Icon(Icons.exit_to_app, color: Colors.white),
                    ),
                    Text('Keluar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          offset: Offset(1.5, 1.5), // Posisi bayangan
                          blurRadius: 3, // Intensitas blur pada bayangan
                          color: Colors.black.withOpacity(0.7), // Warna bayangan sedikit transparan
                        ),
                      ],))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
