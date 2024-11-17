import 'package:flutter/material.dart';
import 'package:mysql_flutter_crud/data/models/product_models.dart';
import 'package:mysql_flutter_crud/presentation/widget/action_button.dart';
import 'package:mysql_flutter_crud/presentation/widget/init_product_form.dart';
import 'custom_text_field.dart';

//Add product + Edit product call from product_ui
class ShowModalProduct extends StatefulWidget {
  final void Function(String, String, String, String) onAdd;
  final bool isEditMode;
  final Product? editedProduct;

  const ShowModalProduct({
    super.key,
    required this.onAdd,
    this.isEditMode = false,
    this.editedProduct,
  });

  @override
  ShowModalProductState createState() => ShowModalProductState();
}

class ShowModalProductState extends State<ShowModalProduct> {
  final TextEditingController codeController = TextEditingController();
  final TextEditingController typeController = TextEditingController();
  final TextEditingController brandController = TextEditingController();
  final TextEditingController cpuController = TextEditingController();

  @override
  void initState() {
    super.initState();
    initializeProductForm(
      isEditMode: widget.isEditMode,
      editedProduct: widget.editedProduct,
      codeController: codeController,
      typeController: typeController,
      brandController: brandController,
      cpuController: cpuController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        CustomTextField(
          label: 'Code',
          controller: codeController,
        ),
        CustomTextField(
          label: 'type',
          controller: typeController,
        ),
        CustomTextField(
          label: 'brand',
          controller: brandController,
        ),
        CustomTextField(
          label: 'cpu',
          controller: cpuController,
        ),
        const SizedBox(height: 16),
        ActionButtons(
          onAdd: () {
            widget.onAdd(
              codeController.text,
              typeController.text,
              brandController.text,
              cpuController.text,
            );
            Navigator.pop(context);
          },
          isEditMode: widget.isEditMode,
        ),
      ],
    );
  }
}
