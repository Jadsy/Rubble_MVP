import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/mafia_roles.dart';
import 'package:rubblefrontend/role_pages/police_role_page.dart';

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
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) {
              return const PoliceRolePage();
            },
          ),
        );
      },
    );
  }
}
