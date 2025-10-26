import 'package:capek_mikir/config/router.dart';
import 'package:capek_mikir/config/app_theme.dart';
import 'package:capek_mikir/models/categories.dart';
import 'package:capek_mikir/provider/user_state_provider.dart';
import 'package:capek_mikir/widgets/outlined_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _nameController = TextEditingController();
  Categories? _selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppTheme.spacingXxl,
          vertical: AppTheme.spacingXl,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              spacing: AppTheme.spacingXl,
              children: [
                // <CHANGE> Added header text
                Text(
                  'Capek Mikir',
                  style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Isi dulu data diri terus pilih kategori untuk mulai',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppTheme.spacingMd),

                // Nama Input
                OutlinedTextField(
                  controller: _nameController,
                  labelText: "Nama",
                  hintText: "Siapa namanya?",
                ),

                // Kategori Dropdown
                DropdownButtonFormField<Categories>(
                  decoration: AppTheme.buildInputDecoration(
                    labelText: "Kategori",
                    context: context,
                  ),
                  initialValue: _selectedCategory,
                  items: Categories.values.map((category) {
                    return DropdownMenuItem(
                      value: category,
                      child: Text(category.displayName),
                    );
                  }).toList(),
                  onChanged: (category) {
                    setState(() {
                      _selectedCategory = category;
                    });
                  },
                ),

                const SizedBox(height: AppTheme.spacingLg),

                // Submit Button
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    style: AppTheme.filledButtonStyle,
                    onPressed: () {
                      if (_nameController.text.isEmpty ||
                          _selectedCategory == null) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text("Isi dulu semuanya ya 😤"),
                            behavior: SnackBarBehavior.floating,
                          ),
                        );
                        return;
                      }

                      final userProvider = context.read<UserStateProvider>();
                      userProvider.setUserData(
                        _nameController.text,
                        _selectedCategory!,
                      );
                      context.go(AppRoutes.quiz);
                    },
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: AppTheme.spacingMd,
                      ),
                      child: Text(
                        "Gaskan",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}