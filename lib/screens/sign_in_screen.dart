
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInSreenState();
}

class _SignInSreenState extends State<SignInScreen>{
//TODO : 1. Deklarasikan Variabel
final TextEditingController _usernameContoller = TextEditingController();

final TextEditingController _passwordContoller = TextEditingController();

String _errorText = '';
bool isSignedIn = false;
bool _obscurePassword = true;

@override
Widget build(BuildContext context){
  return Scaffold(
    //TODO : 2. Pasang Appbar
      appBar: AppBar(title: const Text('Sign In'),),
      //TODO : 3. Pasang body
      body: Center(
        child : SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
          child: Column(
          // TODO : 4. Atur mainAxisAlignment dan crossAxisAligment
          children: <Widget>[
            //TODO : 5. Pasang TextFormField Nama Pengguna
            TextFormField(
            controller: _usernameContoller,
            decoration: const InputDecoration(
              labelText: "Nama Pengguna",
              border: OutlineInputBorder(),
            ),
          ),
          //TODO : 6. Pasang TextFormField Kata Sandi
          const SizedBox(height: 20),
          TextFormField(
          controller: _passwordContoller,
          decoration: InputDecoration(
            labelText: "Kata Sandi",
            errorText: _errorText.isNotEmpty ? _errorText : null,
            border: OutlineInputBorder(),
            suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _obscurePassword = !_obscurePassword;
            });
          },
          icon: Icon(
            _obscurePassword ? Icons.visibility_off
                :Icons.visibility,
          ),
            ),
          ),
          obscureText: _obscurePassword,
        ),

        //TODO : 7. Pasang ElevatedButton Sign In
        SizedBox(height: 20),
        ElevatedButton(
            onPressed: (){},
            child: Text('Sign In')),
        // TODO: 8. Pasang TextButton Sign Up
        SizedBox(height: 10),
        TextButton(
            onPressed: (){},
            child: Text('Belum punya akun ? Daftar disini.')),
        RichText(
          text: TextSpan(
            text: 'Belum Punya Akun ?',
            style: TextStyle(fontSize: 16, color: Colors.deepPurple),
            children: <TextSpan>[
          TextSpan(
            text: 'Daftar di sini.',
            style: TextStyle(
                color : Colors.blue,
                decoration: TextDecoration.underline,
                fontSize: 16
            ),
            recognizer: TapGestureRecognizer()
              ..onTap =() {},
          ),
            ],
          ),
        )
        ],
      )),
  )
        )
      )
  );
}
}