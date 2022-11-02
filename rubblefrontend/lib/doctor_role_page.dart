import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/mafia_roles.dart';
import 'package:rubblefrontend/villager_role_page.dart';

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
              return const VillagerRolePage();
            },
          ),
        );
      },
    );
  }
}
