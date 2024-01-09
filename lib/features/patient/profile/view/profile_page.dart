import 'package:feedbackscs2024/core/ui/widgets/app_drawer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/doctor_widget.dart';
import '../widgets/neurostim_widget.dart';
import '../widgets/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      drawer: AppDrawer(),
      drawerDragStartBehavior: DragStartBehavior.down,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          'FeedBackSCS',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onSurface,
              size: 30,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [Profile(context), Neurostimulator(context), MyDoctor()],
          ),
        ),
      ),
    );
  }
}
