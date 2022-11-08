import 'package:flutter/material.dart';
import 'package:rubblefrontend/action_pages/kill_page.dart';
import 'package:rubblefrontend/components/mafia_roles.dart';

class DoctorRolePage extends StatefulWidget {
  const DoctorRolePage({super.key});

  @override
  State<DoctorRolePage> createState() => _DoctorRolePageState();
}

class _DoctorRolePageState extends State<DoctorRolePage> {
  @override
  Widget build(BuildContext context) {
    return MafiaRoles(
      image: Image.asset("images/doctor_role.png"),
      role: "Doctor",
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const KillPage();
            },
          ),
        );
      },
    );
  }
}
