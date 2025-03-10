import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class FormPage extends StatefulWidget {
  FormPage({super.key});

  @override
  FormPageState createState() => FormPageState();
}

class FormPageState extends State<FormPage> {
  final _formKey = GlobalKey<FormState>(); // Key for the form
  final _nameController = TextEditingController(); // Controller for name field
  final _emailController =
      TextEditingController(); // Controller for email field
  final _passwordController =
      TextEditingController(); // Controller for password field

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form Page')),
      body: Form(
        key: _formKey, // Assign the form key
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Name Field
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  } else if (RegExp('r^[a-zA-Z]').hasMatch(value!)) {
                    return 'Please enter valid name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Email Field
              TextFormField(
                controller: _emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null ||
                      value.isEmpty ||
                      !RegExp(
                        r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
                      ).hasMatch(value)) {
                    return 'Please enter your email';
                  }
                  // Step 2: Validate email domain
                  final domain = value.split('@')[1]; // Extract domain part
                  final validDomains = [
                    'gmail.com',
                    'yahoo.com',
                    'outlook.com',
                    'example.com',
                  ]; // Add more domains as needed

                  if (!validDomains.contains(domain)) {
                    return 'Please enter a valid email domain';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16),

              // Password Field
              TextFormField(
                controller: _passwordController,
                obscureText: true, // Hide password
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (!RegExp(
                    r'^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[!@#$%^&*(),.?":{}|<>]).{6,}$',
                  ).hasMatch(value)) {
                    return 'Password must contain at least one uppercase letter, one lowercase letter, one number, and one special character';
                  }
                  return null;
                },
              ),
              SizedBox(height: 24),

              // Submit Button
              ElevatedButton(
                onPressed: () {
                  // Validate the form
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, proceed
                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(SnackBar(content: Text('Form is valid!')));

                    // Access the form data
                    String name = _nameController.text;
                    String email = _emailController.text;
                    String password = _passwordController.text;

                    // Do something with the data (e.g., send to server)
                    print('Name: $name, Email: $email, Password: $password');
                  }
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
