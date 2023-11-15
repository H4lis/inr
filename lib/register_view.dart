import 'package:flutter/material.dart';
import 'package:inr/home_view.dart';
import 'package:inr/login_view.dart';
import 'package:inr/shared/constant.dart';


class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool isLoading = false;
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/baground_register.png",
            width: 236,
          ),
          ListView(
            padding: EdgeInsets.symmetric(horizontal: 20),
            children: [
              SizedBox(
                height: 170,
              ),
              Center(
                child: Text(
                  "Selamat Bergabung!",
                  style: bold.copyWith(fontSize: 24),
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Center(
                child: Text(
                  "Mari persiapkan karir Anda.",
                  style: light.copyWith(fontSize: 12),
                ),
              ),
              SizedBox(
                height: 46,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    TextField(
                      // controller: controller.namaLengkapC,
                      cursorColor: purple,
                      decoration: InputDecoration(
                          hintText: 'Nama lengkap',
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 14, horizontal: 14),
                          hintStyle:
                              light.copyWith(fontSize: 14), // Pesan petunjuk
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(40)), // Garis pinggir
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: BorderSide(color: purple))),
                      style: regular.copyWith(fontSize: 14),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    TextField(
                      cursorColor: purple,
                      decoration: InputDecoration(
                          hintText: 'Alamat Email',
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 14, horizontal: 14),
                          hintStyle:
                              light.copyWith(fontSize: 14), // Pesan petunjuk
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.circular(40)), // Garis pinggir
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                              borderSide: const BorderSide(color: purple))),
                      style: regular.copyWith(fontSize: 14),
                    ),
                    const SizedBox(height: 22),
                    TextField(
                      controller: passwordController,
                      cursorColor: purple,
                      obscureText: !isPasswordVisible,
                      decoration: InputDecoration(
                        hintText: "Password",
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 14,
                        ),
                        hintStyle: const TextStyle(fontSize: 14),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: purple),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            togglePasswordVisibility();
                          },
                          icon: Icon(
                            isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      style: const TextStyle(fontSize: 14),
                    ),
                    const SizedBox(height: 22),
                    TextField(
                      controller: passwordController,
                      cursorColor: purple,
                      obscureText: !isPasswordVisible,
                      decoration: InputDecoration(
                        hintText: "Confirm Password",
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 14,
                        ),
                        hintStyle: const TextStyle(fontSize: 14),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40),
                          borderSide: const BorderSide(color: purple),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            togglePasswordVisibility();
                          },
                          icon: Icon(
                            isPasswordVisible
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      style: const TextStyle(fontSize: 14),
                    ),
                    SizedBox(height: 8),
                    InkWell(
                      onTap: () {
                        // Navigasi ke halaman lupa password
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Lupa Password?",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: purple,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (!isLoading) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeView()));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    elevation: 0,
                    minimumSize: const Size(double.infinity, 54),
                  ),
                  child: isLoading
                      ? const CircularProgressIndicator()
                      : Text(
                          "Masuk",
                          style: semiBold.copyWith(fontSize: 18),
                        ),
                ),
              ),
              const SizedBox(height: 14),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Belum memiliki akun? ",
                      style: TextStyle(fontSize: 14),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginView()));
                      },
                      child: Text("Dafar",
                          style: bold.copyWith(fontSize: 14, color: purple)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
