import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/mafia_roles.dart';

class MafiaRolePage extends StatefulWidget {
  const MafiaRolePage({super.key});

  @override
  State<MafiaRolePage> createState() => _MafiaRolePageState();
}

class _MafiaRolePageState extends State<MafiaRolePage> {
  @override
  Widget build(BuildContext context) {
    return MafiaRoles(
      image: Image.asset("images/mafia_role.png"),
      role: "Mafia",
    );
  }
}
