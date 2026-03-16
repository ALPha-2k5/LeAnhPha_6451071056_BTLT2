import 'package:flutter/material.dart';
import '../models/user_model.dart';
import '../widget/avatar_widget.dart';
import '../widget/info_text_widget.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  static const UserModel _user = UserModel(
    name: 'Nguyen Lan Huong',
    email: 'lanhuong.nguyen@example.com',
    avatarUrl: 'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=200',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AvatarWidget(imageUrl: _user.avatarUrl, radius: 60),
            const SizedBox(height: 16),
            InfoTextWidget(
              text: _user.name,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: Colors.amber.shade100,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.amber.shade700, width: 2),
              ),
              child: const Text(
                'MSSV: 6451071056',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                  letterSpacing: 1.2,
                ),
              ),
            ),
            const SizedBox(height: 8),
            InfoTextWidget(
              text: _user.email,
              style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),
              child: const Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}