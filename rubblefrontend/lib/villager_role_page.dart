import 'package:flutter/material.dart';
import 'package:rubblefrontend/components/mafia_roles.dart';

class VillagerRolePage extends StatefulWidget {
  const VillagerRolePage({super.key});

  @override
  State<VillagerRolePage> createState() => _VillagerRolePageState();
}

class _VillagerRolePageState extends State<VillagerRolePage> {
  @override
  Widget build(BuildContext context) {
    return MafiaRoles(
      image: Image.asset("images/villager_role.png"),
      role: "Villager",
    );
  }
}
