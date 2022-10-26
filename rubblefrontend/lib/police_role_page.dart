import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/mafia_roles.dart';

class PoliceRolePage extends StatefulWidget {
  const PoliceRolePage({super.key});

  @override
  State<PoliceRolePage> createState() => _PoliceRolePageState();
}

class _PoliceRolePageState extends State<PoliceRolePage> {
  @override
  Widget build(BuildContext context) {
    return MafiaRoles(
      image: Image.asset("images/police_role.png"),
      role: "Police",
    );
  }
}
