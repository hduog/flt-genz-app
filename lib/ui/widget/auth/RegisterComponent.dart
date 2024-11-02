import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/LoginModel/RegistrationPost.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_application_1/core/service/auth/auth_service.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterComponent extends StatefulWidget {
  final VoidCallback onRegisterSuccess;
  const RegisterComponent({required this.onRegisterSuccess});
  @override
  _RegisterComponentState createState() => _RegisterComponentState();
}

class _RegisterComponentState extends State<RegisterComponent> {
  final _formKey = GlobalKey<FormState>();
  bool isLoading = false;
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _fullNameController = TextEditingController();
  String _errorMessage = '';

  void _resetForm() {
    _formKey.currentState?.reset();
    _emailController.clear();
    _passwordController.clear();
    _confirmPasswordController.clear();
    _fullNameController.clear();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _fullNameController.dispose();

    super.dispose();
  }

  void _submitForm() async {
    final authService = AuthService();
    if (_formKey.currentState!.validate()) {
      setState(() {
        isLoading = true;
      });

      final status = await authService.registration(RegistrationPost(
          _emailController.text,
          _passwordController.text,
          _fullNameController.text));

      if (!status) {
        setState(() {
          _errorMessage =
              'Tạo tài khoản không thành công, email đã được sử dụng. Vui lòng thử lại!';
        });
      } else {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString('email_account', _emailController.text);
        _resetForm();
        Fluttertoast.showToast(
          msg: "Tạo tài khoản thành công !",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.TOP,
          backgroundColor: Colors.white,
          textColor: Colors.blue,
          fontSize: 16.0,
        );

        widget.onRegisterSuccess();

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
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: _fullNameController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập họ và tên';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Họ và tên',
                    hintStyle: const TextStyle(
                      color: Colors.grey, // Màu cho hintText
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _emailController,
                  validator: (value) {
                    if (!value!.contains('@')) {
                      return 'Vui lòng nhập đúng email';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'E-mail',
                    hintText: 'Nhập Email',
                    hintStyle: const TextStyle(
                      color: Colors.grey, // Màu cho hintText
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _passwordController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Vui lòng nhập mật khẩu';
                    } else if (value.length < 8) {
                      return 'Mật khẩu ít nhất có 8 kí tự';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Mật khẩu',
                    hintText: 'Nhập mật khẩu của bạn',
                    hintStyle: const TextStyle(
                      color: Colors.grey, // Màu cho hintText
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                TextFormField(
                  controller: _confirmPasswordController,
                  validator: (value) {
                    if (value != _passwordController.text) {
                      return 'Mật khẩu khômg chính xác';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Xác Thực Mật khẩu',
                    hintStyle: const TextStyle(
                      color: Colors.grey, // Màu cho hintText
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  obscureText: true,
                ),
                const SizedBox(height: 15),
                Visibility(
                    visible: _errorMessage.isNotEmpty,
                    child: Text(_errorMessage)),
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
                      'Đăng ký',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
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
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'hoặc đăng nhập với',
                  style: TextStyle(color: Colors.black54),
                ),

                const SizedBox(height: 10),
                ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 20),
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
                const SizedBox(height: 10), // Sign Up Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Đã có tài khoản?'),
                    TextButton(
                      onPressed: () {
                        widget.onRegisterSuccess();
                      },
                      child: const Text(
                        'Đăng nhập',
                        style: TextStyle(color: Colors.blue),
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
          ],
        ));
  }
}
