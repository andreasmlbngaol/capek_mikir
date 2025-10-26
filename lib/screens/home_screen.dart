import 'package:capek_mikir/config/router.dart';
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
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .primaryContainer,
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Center(
          child: Column(
            spacing: 16,
            mainAxisSize: MainAxisSize.min,
            children: [
              // Nama
              OutlinedTextField(
                  controller: _nameController,
                  labelText: "Nama",
                  hintText: "Siapa namanya?"
              ),

              // Dropdown kategori
              DropdownButtonFormField<Categories>(
                decoration: const InputDecoration(
                  labelText: "Kategori",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                ),
                initialValue: _selectedCategory,
                items: Categories.values.map((category) {
                  return DropdownMenuItem(
                    value: category,
                    child: Text(category.displayName),
                  );
                }).toList(),
                onChanged: (category) {
                  debugPrint("Selected category: $category");
                  setState(() {
                    _selectedCategory = category;
                  });
                },
              ),

              // Tombol submit
              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: () {
                    if (_nameController.text.isEmpty ||
                        _selectedCategory == null) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text("Isi dulu semuanya ya 😤"),
                        ),
                      );
                      return;
                    }

                    final userProvider = context.read<UserStateProvider>();
                    userProvider.setUserData(_nameController.text, _selectedCategory!);
                    context.push(AppRoutes.quiz);
                  },
                  child: const Text("Gaskan"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}