import 'package:flutter/material.dart';
import 'package:mysql_flutter_crud/data/models/product_models.dart';
import 'package:mysql_flutter_crud/presentation/widget/action_button.dart';
import 'package:mysql_flutter_crud/presentation/widget/init_product_form.dart';
import 'custom_text_field.dart';

//Add product + Edit product call from product_ui
class ShowModalProduct extends StatefulWidget {
  final void Function(String, String, String, String, String, String) onAdd;
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
  final TextEditingController ramController = TextEditingController();
  final TextEditingController hddController = TextEditingController();

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
      ramController: ramController,
      hddController: hddController,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16.0),
      children: [
        CustomTextField(
          label: 'Codigo',
          controller: codeController,
        ),
        CustomTextField(
          label: 'Tipo',
          controller: typeController,
        ),
        CustomTextField(
          label: 'Marca',
          controller: brandController,
        ),
        CustomTextField(
          label: 'Cpu',
          controller: cpuController,
        ),
        CustomTextField(
          label: 'RAM',
          controller: ramController,
        ),
        CustomTextField(
          label: 'HDD',
          controller: hddController,
        ),
        const SizedBox(height: 16),
        ActionButtons(
          onAdd: () {
            widget.onAdd(
              codeController.text,
              typeController.text,
              brandController.text,
              cpuController.text,
              ramController.text,
              hddController.text,
            );
            Navigator.pop(context);
          },
          isEditMode: widget.isEditMode,
        ),
      ],
    );
  }
}
