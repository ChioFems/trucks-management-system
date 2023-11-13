import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:trucks_flutter/features/trucks/providers/truck_model_provider.dart';

import 'components/button_widget1.dart';

class NewTruckModelPage extends ConsumerStatefulWidget {
  @override
  ConsumerState<NewTruckModelPage> createState() => _NewTruckModelPageState();
}

class _NewTruckModelPageState extends ConsumerState<NewTruckModelPage> {
  final _formKey = GlobalKey<FormState>();
  //final _brandNameController = TextEditingController();
  final _brandNameController = TextEditingController();
  final _modelNameController = TextEditingController();

  // onBrandValidator() => (value) {
  //       if (value.isEmpty) {
  //         return 'Please enter a brand name';
  //       }
  //       return null;
  //     };

  void _saveForm() async {
    if (_formKey.currentState!.validate()) {
      // Save the form data
      final brandName = _brandNameController.text;
      final modelName = _modelNameController.text;

      // Save data
      ref.read(truckModelProvider.notifier).create(
          brandName: brandName,
          modelName: modelName,
          modifiedBy: 2,
          createdDate: DateTime.now(),
          modifiedDate: DateTime.now());

      log(brandName);
      log(modelName);
      // Show a snackbar to confirm the save
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          //     content: Text('Brand name: $brandName'),
          content: Text('New Truck Model Added Successfully!'),
        ),
      );
      Navigator.of(context).pop();
    }
  }

  void _saveAndAddNewForm() async {
    if (_formKey.currentState!.validate()) {
      // Save the form data
      final brandName = _brandNameController.text;
      final modelName = _modelNameController.text;

      // Save data
      ref.read(truckModelProvider.notifier).create(
          brandName: brandName,
          modelName: modelName,
          modifiedBy: 2,
          createdDate: DateTime.now(),
          modifiedDate: DateTime.now());

      // Show a snackbar to confirm the save
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          //     content: Text('Brand name: $brandName'),
          content: Text('New Truck Model Added Successfully!'),
        ),
      );

      _brandNameController.clear();
      _modelNameController.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Truck Model'),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextFormField(
                controller: _brandNameController,
                decoration: InputDecoration(
                  labelText: 'Brand Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a brand name';
                  }
                  return null;
                },
              ),
              // CustomTextFormField(
              //   validator: onBrandValidator,
              //   controller: _brandNameController,
              //   hintText: 'Brand Name',
              //   obscureText: false,
              //   keyboardType: TextInputType.text,
              // ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: _modelNameController,
                decoration: InputDecoration(
                  labelText: 'Model Name',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a model name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // save button
                  SizedBox(
                    width: (200),
                    child: ButtonWidgetWithOutIcon(
                      label: 'Save',
                      onTap: _saveForm,
                    ),
                  ),
                  // save and add new button
                  SizedBox(
                    width: (200),
                    child: ButtonWidgetWithOutIcon(
                      label: 'Save & Add New',
                      onTap: _saveAndAddNewForm,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
