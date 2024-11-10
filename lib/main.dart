import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aqua',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 932,
        width: 430,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('Images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset('Images/10c831bf8d18f4a4324e72a79d995872.png', height: 300, width: 513),
            const SizedBox(height: 0),
            const Text(
              'KEBAIKAN',
              style: TextStyle(
                fontFamily: 'bold',
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 0),
            const Text(
              'BERAWAL',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'DARI SINI',
              style: TextStyle(
                fontFamily: 'bold',
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 0),
            const Text(
              'Terpercaya lebih\ndari 45 tahun',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 41, 14, 14),
                  width: 0,
                  style: BorderStyle.solid,
                ),
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              height: 54,
              width: 80,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                },
                icon: const Icon(Icons.arrow_forward, color: Color.fromARGB(255, 139, 143, 147)),
                iconSize: 40,
              ),
            ),
            const SizedBox(height: 0),
            Image.asset('Images/BOTOL AKUA.png', height: 340,),
            const SizedBox(height: 0  ),
          ],
        ),
      ),
    );
  }
}



//Halaman ke 2

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment(0, 0.1),
            colors: [
              Color.fromARGB(223, 179, 211, 255),
              Color.fromARGB(241, 255, 255, 255),
            ],
          ),
          image: DecorationImage(
            image: AssetImage('Images/VECTOR HALAMAN 2.png'), // Background Vector
            alignment: Alignment.bottomCenter,
            fit: BoxFit.contain,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'Images/10c831bf8d18f4a4324e72a79d995872.png',
              height: 300,
              width: 513,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Login(),));
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                backgroundColor: const Color.fromARGB(255, 26, 82, 157),
                padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 28),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              child: const Text(
                'Login',
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => Register(),));
              },
              style: OutlinedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 117, vertical: 28),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                side: const BorderSide(color: Color(0xFF1A73E8), width: 2),
              ),
              child: const Text(
                'Register',
                style: TextStyle(fontSize: 16, color: Color(0xFF1A73E8)),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Kebaikan Alam\nKebaikan Hidup',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, color: Color(0xFF333333)),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'Images/BOTOL HALAMAN 2.png',
              height: 370.1,
            ),
          ],
        ),
      ),
    );
  }
}
class InputField extends StatefulWidget {
  final String label;
  final IconData icon;
  final bool isPassword;

  const InputField({
    Key? key,
    required this.label,
    required this.icon,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(color: Color(0xFF4A4A4A), fontFamily: 'Montserrat-ExtraBold.otf'),
        ),
        const SizedBox(height: 5),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFF0047BA), width: 2),
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            obscureText: widget.isPassword ? _obscureText : false,
            decoration: InputDecoration(
              prefixIcon: Icon(widget.icon, color: const Color(0xFF0047BA)),
              suffixIcon: widget.isPassword
                  ? IconButton(
                      icon: Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility,
                        color: const Color(0xFF0047BA),
                      ),
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                    )
                  : null,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),
          ),
        ),
      ],
    );
  }
}

// Login Page
class Login extends StatelessWidget {
  const Login({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Container(
          width: 450,
          child: Stack(
            children: [
              Positioned(
                top: 30,
                right: 350,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, size: 30, color: Color(0xFF4A4A4A)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: 200,
                left: 40,
                right: 40,
                child: const InputField(
                  label: 'Email',
                  icon: Icons.email,
                ),
              ),
              Positioned(
                top: 300,
                left: 40,
                right: 40,
                child: const InputField(
                  label: 'Kata Sandi',
                  icon: Icons.lock,
                  isPassword: true,
                  
                ),
              ),
              Positioned(
                top: 750,
                left: 60,
                right: 60,
                height: 65,
                child: ElevatedButton(
                  onPressed: () {
       
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0047BA),
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    'Login',
                    style: TextStyle(fontFamily: 'Montserrat-ExtraBold.otf', fontWeight: FontWeight.bold, fontSize: 16, color: Color.fromARGB(255, 255, 255, 255), ),
                  ),
                ),
              ),
              Positioned(
                top: 140,
                left: 180,
                child: const Text(
                  'Login',
                  style: TextStyle(fontFamily: 'Montserrat-ExtraBold.otf', fontWeight: FontWeight.bold,fontSize: 30, color: Color.fromARGB(255, 0, 0, 0),  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Register Page
class Register extends StatelessWidget {
  const Register({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Container(
          width: 450,
          child: Stack(
            children: [
              Positioned(
                top: 30,
                right: 350,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, size: 30, color: Color(0xFF4A4A4A)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                top: 200,
                left: 40,
                right: 40,
                child: const InputField(
                  label: 'Username',
                  icon: Icons.person,
                ),
              ),
              Positioned(
                top: 300,
                left: 40,
                right: 40,
                child: const InputField(
                  label: 'Email',
                  icon: Icons.email,
                ),
              ),
              Positioned(
                top: 400,
                left: 40,
                right: 40,
                child: const InputField(
                  label: 'Kata Sandi',
                  icon: Icons.lock,
                  isPassword: true,
                ),
              ),
              Positioned(
                top: 500,
                left: 40,
                right: 40,
                child: const InputField(
                  label: 'Konfirmasi Kata Sandi',
                  icon: Icons.lock,
                  isPassword: true,
                ),
              ),
              Positioned(
                top: 600, 
                left: 40,
                right: 40,
                child: ElevatedButton(
                  onPressed: () {
                    // Add registration logic here
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    backgroundColor: const Color(0xFF1A73E8),
                    padding: const EdgeInsets.symmetric(horizontal: 125, vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                 child: const Text(
                    'Register',
                    style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255), fontFamily: 'Montserrat-ExtraBold.otf', fontWeight: FontWeight.bold)
                 ),
                ),
              ),
               Positioned(
                top: 140,
                left: 160,
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 30, color: Color.fromARGB(255, 0, 0, 0), fontFamily: 'Montserrat-ExtraBold.otf', fontWeight: FontWeight.bold, ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
            