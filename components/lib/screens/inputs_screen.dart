import 'package:components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormkey = GlobalKey<FormState>();
    final Map<String,String> formValues = {
      'first_name':'Ray',
      'last_name':'Gamboa',
      'email':'Gamboa@gmail.com',
      'password':'123456',
      'role':'Admin'
    };
    return Scaffold(
      appBar: AppBar(
        title:const Text('Inputs Screen')
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20, vertical:10),
          child: Form(
           key:myFormkey,
            child: Column(
              children: [
               InputDefault(hintText:'First Name',labelText:'First Name', formProperty: 'first_name', formValues: formValues,),
               const SizedBox(height:30,),
               InputDefault(hintText:'Last Name',labelText:'Last Name', formProperty: 'last_name', formValues: formValues,),
               const SizedBox(height:30,),
               InputDefault(hintText:'Email',labelText:'Email', textInputType:TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
               const SizedBox(height:30,),
               InputDefault(hintText:'Password',labelText:'Password', obscureText: true, formProperty: 'password', formValues: formValues,),
               const SizedBox(height:30,),
               ElevatedButton( onPressed:(){

                FocusScope.of(context).requestFocus(FocusNode());
                 if(!myFormkey.currentState!.validate()){
                    print('no valid form key');
                 }else{
                    print(formValues);
                 }
                  
                }, 
              child: const SizedBox(width: double.infinity, child: Text('Save')))
              ]
                  ),
          ),
      )
      )
    );
  }
}

