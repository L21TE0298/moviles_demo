import 'package:flutter/material.dart';
import 'package:moviles_demo/U1/models/contact.dart';
import 'package:moviles_demo/U1/providers/contacts_provider.dart';
import 'package:moviles_demo/U1/widgets/text_box.dart';
import 'package:provider/provider.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({super.key});

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final txtNameController = TextEditingController();
  final txtPhoneController = TextEditingController();
  final txtGenderController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Registrar nuevo contacto"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: CircleAvatar(
                  radius: 70,
                  foregroundColor: Colors.grey.shade400,
                  child: Icon(Icons.person, size: 130),
                ),
              ),
              TextBoxWidget(
                field: 'el nombre completo',
                txtcontroller: txtNameController,
                iconText: Icons.person,
                inputType: TextInputType.text,
                isPassword: false,
                txtTitle: 'Nombre completo',
              ),
              TextBoxWidget(
                field: 'el número telefónico',
                txtcontroller: txtPhoneController,
                iconText: Icons.phone,
                inputType: TextInputType.number,
                isPassword: false,
                txtTitle: 'Teléfono',
              ),
              TextBoxWidget(
                field: 'el sexo',
                txtcontroller: txtGenderController,
                iconText: Icons.add_reaction_sharp,
                inputType: TextInputType.text,
                isPassword: false,
                txtTitle: 'Sexo',
              ),
              SizedBox(height: 25),
              MaterialButton(
                elevation: 3,
                color: const Color.fromARGB(248, 171, 247, 175),
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    //Si los cuadros son diferentes de vacio
                    Person newContact = Person(
                      name: txtNameController.text,
                      phone: txtPhoneController.text,
                      gender: txtGenderController.text,
                    );

                    context.read<ContactProvider>().addContact(newContact);
                    Navigator.pop(context, '/');
                  }
                },
                child: SizedBox(
                  height: 50,
                  width: 120,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Registrar", style: TextStyle(fontSize: 25)),

                      Icon(Icons.save, size: 30),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
