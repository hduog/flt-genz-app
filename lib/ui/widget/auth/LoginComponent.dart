import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/LoginModel/LoginPost.dart';
import 'package:flutter_application_1/core/service/auth/auth_service.dart';
import 'package:flutter_application_1/ui/widget/main-layout.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginComponent extends StatefulWidget {
  final VoidCallback onRegisterSuccess;
  const LoginComponent({required this.onRegisterSuccess});
  @override
  _LoginComponentState createState() => _LoginComponentState();
}

class _LoginComponentState extends State<LoginComponent> {
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  String _errorMessage = '';
  bool _isPasswordVisible = false;
  @override
  void initState() {
    super.initState();
    _loadEmail();
  }

  Future<void> _loadEmail() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _usernameController.text = prefs.getString('email_account') ?? '';
    });
  }

  void _submitForm() async {
    final authService = AuthService();
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });

      final status = await authService.login(LoginPostModel(
          email: _usernameController.text, password: _passwordController.text));

      if (!status) {
        setState(() {
          _errorMessage = 'Tài khoản chưa chính xác, vui lòng thử lại!';
        });
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainLayout()));
        setState(() {
          _errorMessage = '';
        });
      }

      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                validator: (value) {
                  if (!value!.contains('@')) {
                    return 'Vui lòng nhập mật khẩu';
                  }
                  return null;
                },
                controller: _usernameController,
                decoration: InputDecoration(
                  labelText: 'E-mail',
                  hintText: 'Nhập Email',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Vui lòng nhập mật khẩu';
                  }
                  return null;
                },
                controller: _passwordController,
                obscureText: !_isPasswordVisible,
                decoration: InputDecoration(
                  labelText: 'Mật khẩu',
                  hintText: 'Nhập mật khẩu',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                    ),
                    onPressed: () {
                      setState(() {
                        _isPasswordVisible = !_isPasswordVisible;
                      });
                    },
                  ),
                ),
              ),
              if (_errorMessage.isNotEmpty)
                SizedBox(
                  width: double.infinity,
                  child: Text(
                    _errorMessage,
                    style: const TextStyle(color: colorError),
                  ),
                ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: _submitForm,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Đăng nhập',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Quên mật khẩu?',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 18,
                  ),
                ),
              ),

              const SizedBox(height: 10),
              const Text(
                'hoặc đăng nhập với',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 10),

              // Google Sign-in Button
              ElevatedButton.icon(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                    backgroundColor: Colors.white,
                    side: const BorderSide(color: Colors.black12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: const Size(double.infinity, 50)),
                icon: SvgPicture.asset(
                  'assets/icons/google.svg', // Replace with your Google logo asset
                  height: 40,
                ),
                label: const Text(
                  'Google',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 18,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              // Sign Up Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Không có tài khoản?'),
                  TextButton(
                    onPressed: () {
                      widget.onRegisterSuccess();
                    },
                    child: const Text(
                      'Đăng kí',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Visibility(
            visible: isLoading,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width,
              color: colorBackground.withOpacity(0.5),
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        ]));
  }
}
