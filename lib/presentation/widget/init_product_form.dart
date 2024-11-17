import 'package:flutter/material.dart';
import 'package:mysql_flutter_crud/data/models/product_models.dart';

//Load initState in show modal product for edit product
void initializeProductForm({
  required bool isEditMode,
  Product? editedProduct,
  required TextEditingController codeController,
  required TextEditingController typeController,
  required TextEditingController brandController,
  required TextEditingController cpuController,
}) {
  if (isEditMode && editedProduct != null) {
    codeController.text = editedProduct.code.toString();
    typeController.text = editedProduct.type.toString();
    brandController.text = editedProduct.brand.toString();
    cpuController.text = editedProduct.cpu.toString();
  }
}
