import 'package:flutter/material.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_style.dart';
import 'package:seo_renderer/renderers/text_renderer/text_renderer_vm.dart';
import 'package:tattoos/app/resources/app_colors.dart';
import 'package:tattoos/app/resources/app_constants.dart';
import 'package:tattoos/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

class BudgetRequestSection extends StatefulWidget {
  const BudgetRequestSection({super.key});

  @override
  BudgetRequestSectionState createState() => BudgetRequestSectionState();
}

class BudgetRequestSectionState extends State<BudgetRequestSection> {
  final _requestController = TextEditingController();
  final _phoneController = TextEditingController();
  final _nameController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bool isMobile = constraints.maxWidth < 600;
        final bool isTablet = constraints.maxWidth < 1150;

        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: isMobile || isTablet ? 30 : 100,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextRenderer(
                style: TextRendererStyle.header6,
                child: Text(
                  S.current.budget_request_title,
                  style: TextStyle(
                    color: AppColors.white,
                    fontSize: isMobile
                        ? 24
                        : isTablet
                            ? 28
                            : 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextRenderer(
                style: TextRendererStyle.paragraph,
                child: Text(
                  S.current.budget_request_description,
                  style: TextStyle(
                    color: AppColors.white.withOpacity(0.8),
                    fontSize: isMobile
                        ? 14
                        : isTablet
                            ? 16
                            : 18,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    _buildTextField(
                      controller: _nameController,
                      labelText: S.current.name,
                      isMobile: isMobile,
                    ),
                    const SizedBox(height: 10),
                    _buildTextField(
                      labelText: S.current.contact_phone,
                      keyboardType: TextInputType.phone,
                      controller: _phoneController,
                      isMobile: isMobile,
                    ),
                    const SizedBox(height: 10),
                    _buildTextField(
                      controller: _requestController,
                      labelText: S.current.request,
                      isMobile: isMobile,
                      maxLines: 5,
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _submitForm,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColors.blue,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 20,
                        ),
                      ),
                      child: Text(
                        S.current.send_request.toUpperCase(),
                        style: const TextStyle(
                          color: AppColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildTextField({
    required TextEditingController controller,
    required String labelText,
    bool isMobile = false,
    TextInputType keyboardType = TextInputType.text,
    int maxLines = 1,
  }) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          color: AppColors.white.withOpacity(0.7),
          fontSize: isMobile ? 14 : 16,
        ),
        filled: true,
        fillColor: AppColors.white.withOpacity(0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColors.white.withOpacity(0.7)),
        ),
      ),
      style: TextStyle(
        color: AppColors.white,
        fontSize: isMobile ? 14 : 16,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return S.current.required_field;
        }
        return null;
      },
    );
  }

  void _submitForm() {
    if (_formKey.currentState?.validate() ?? false) {
      launchUrl(
        Uri.parse(
          'mailto:${AppConstants.mailJavi}?subject=${_nameController.text} / ${_phoneController.text}&body=${_requestController.text}',
        ),
      );
    }
  }
}
