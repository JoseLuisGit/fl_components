import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
   double _sliderValue = 200;
   bool _enabledSlider = true;
    _handleSlider(value){
      print(value);
      if(_enabledSlider){
        _sliderValue = value;
        setState(() {});
      }
    }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Screen'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
              value: _sliderValue, 
              onChanged: _handleSlider,
              activeColor: AppTheme.primary,
              min: 200,
              max: 1000,
              ),
             /* Switch(
                value: _enabledSlider, 
                onChanged: (value){
                  _enabledSlider = value;
                  setState(() {});
                }),
*/
              CheckboxListTile(
                value: _enabledSlider, 
                title: const Text('Habilitar Slider'),
                activeColor: AppTheme.primary,
                onChanged: (value){
                  _enabledSlider = value!;
                  setState(() {});
                }),   
              
              SwitchListTile(
                value: _enabledSlider, 
                activeColor: AppTheme.primary,
                onChanged: (value){
                  _enabledSlider = value;
                  setState(() {});
                },
                title: const Text('Habilitar Slider'),
              ),


              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Image(
                  height: _sliderValue,
                  fit: BoxFit.cover,
                  image: const NetworkImage('https://www.pinpng.com/pngs/m/508-5085559_hora-de-aventura-personajes-png-lady-rainicorn-finn.png'),
                  
                ),
              )
      
          ]
        ),
      )
    );
  }
}