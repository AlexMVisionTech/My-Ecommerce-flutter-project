import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:e_shop/common/widgets/appbar/appbar.dart';
import 'package:e_shop/common/widgets/list_tile/userprofiletile.dart';
import 'package:e_shop/features/Personalization/screens/settings/settings_menu_tile.dart';
import 'package:e_shop/features/utils/constants/sizes.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Enhanced App Bar
          Container(
            decoration:const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.lightBlue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0, 4),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: MyAppBar(
                    title: Center(
                      child: Text(
                        'Account',
                        style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                    color: Colors.transparent,
                  ),
                ),
                const MyUserProfileTile(), // Centered with image and text below
              ],
            ),
          ),
          // This Container will fill the remaining space
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/background_image.jpg'),
                    fit: BoxFit.cover, // Ensures the image covers the entire container
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(MySizes.defaultSpace),
                  child: Column(
                    children: [
                      // Classic Followers and Following section
                      const SizedBox(height: MySizes.spacebtwnSections),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: const[
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0, 4),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Social Stats',
                              style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.blue),
                            ),
                            const SizedBox(height: 16),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _buildClassicStatistic(context, Icons.group, 'Followers', '120'),
                                _buildClassicStatistic(context, Icons.group_add, 'Following', '180'),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: MySizes.spacebtwnSections),
                      
                      // My Statistics section
                      Text(
                        'My Statistics',
                        style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),
                      ),
                      const SizedBox(height: MySizes.spacebtwnSections),
                      // Classic and Unique Statistics Card
                      Card(
                        margin: const EdgeInsets.symmetric(vertical: 8.0),
                        color: Colors.white.withOpacity(0.8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Fitness Overview',
                                style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.blue),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildStatisticItem(context, Icons.fitness_center, 'Workouts', '45'),
                                  _buildStatisticItem(context, Icons.timer, 'Time', '30 hrs'),
                                ],
                              ),
                              const SizedBox(height: 16),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  _buildStatisticItem(context, Icons.monitor_weight, 'Calories Burned', '12,000 kcal'),
                                  _buildStatisticItem(context, Icons.directions_run, 'Kilometers Jogged', '10 km'),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      // App setting
                      const SizedBox(height: MySizes.spacebtwnSections),
                      Text(
                        'App setting',
                        style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),
                      ),
                      const SizedBox(height: MySizes.spacebtwnSections),
                      MySettingMenuTile(
                        icon: Iconsax.safe_home,
                        subtitle: 'Upload Data to your Cloud Firebase',
                        title: 'Load Data',
                        onTap: () {},
                      ),
                      MySettingMenuTile(
                        icon: Iconsax.security_user,
                        subtitle: 'Get recommendation on jogging paths based on location',
                        title: 'Geolocation',
                        trailing: Switch(value: true, onChanged: (value) {}),
                      ),
                      MySettingMenuTile(
                        icon: Iconsax.security_user,
                        subtitle: 'Search results in safe for all ages',
                        title: 'Safe Mode',
                        trailing: Switch(value: false, onChanged: (value) {}),
                      ),
                      MySettingMenuTile(
                        icon: Iconsax.security_user,
                        subtitle: 'Set image quality to be seen',
                        title: 'HD Image Quality',
                        trailing: Switch(value: false, onChanged: (value) {}),
                      ),
                      // Logout button
                      const SizedBox(height: MySizes.spacebtwnSections),
                      SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(onPressed: () {}, child: const Text('LogOut')),
                      ),
                      const SizedBox(height: MySizes.spacebtwnSections * 2.5),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildClassicStatistic(BuildContext context, IconData icon, String title, String value) {
    return Column(
      children: [
        Icon(icon, color: Colors.blue, size: 32),
        const SizedBox(height: 8),
        Text(
          value,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.black),
        ),
        const SizedBox(height: 4),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.grey[600]),
        ),
      ],
    );
  }

  Widget _buildStatisticItem(BuildContext context, IconData icon, String title, String value) {
    return Expanded(
      child: Column(
        children: [
          Icon(icon, color: Colors.blue, size: 32),
          const SizedBox(height: 8),
          Text(
            value,
            style: Theme.of(context).textTheme.headlineSmall!.apply(color: Colors.black),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium!.apply(color: Colors.grey[600]),
          ),
        ],
      ),
    );
  }
}
