import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/providre.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? homeProvidertrue;
  HomeProvider? homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    homeProvidertrue = Provider.of(context, listen: true);
    homeProviderfalse = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
            title: Text(
              "App",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            backgroundColor: Colors.purple),
        body: Theme(
          data: ThemeData(
            colorScheme: ColorScheme.light(primary: Colors.purple),
          ),
          child: Stepper(
            type: StepperType.vertical,
            onStepTapped: (index) {
              homeProviderfalse!.jumpstep(index);
            },
            steps: [
              Step(
                isActive: true,
                title: Text(
                  "Sign Up",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email id",
                        prefixIcon: Icon(Icons.email_outlined),
                        border: UnderlineInputBorder(),
                      ),
                    ),

                  ],
                ),
              ),
              Step(
                isActive: true,
                title: Text(
                  "Login",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "User Name",
                        prefixIcon: Icon(Icons.person_outline),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),

              Step(
                isActive: true,
                title: Text(
                  "Name",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        prefixIcon: Icon(Icons.person_outline),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                isActive: true,
                title: Text(
                  "password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock_outline_rounded),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                isActive: true,
                title: Text(
                  "Emial",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Email id",
                        prefixIcon: Icon(Icons.email_outlined),
                        border: UnderlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
              Step(
                isActive: true,
                title: Text(
                  "Confirm",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
            currentStep: homeProvidertrue!.i,
            onStepCancel: () {
              homeProviderfalse!.backstep();
            },
            onStepContinue: () {
              homeProviderfalse!.nextstep();
            },
          ),
        ),
      ),
    );
  }
}