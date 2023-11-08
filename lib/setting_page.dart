import 'package:flutter/material.dart';
import 'package:mobile_billing_ps_app/theme.dart';
import 'package:provider/provider.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});
  List<int> indek = List.generate(4, (index) => index);
  List<String> warna = [
    'Blue-Orange', 'Red-Green', 'Yellow-Indigo', 'Purple-Black'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Setting',
              style: TextStyle(
                fontSize: 35,
                
              ),
            ),
            Text(
              'Ganti Tema',
              style: TextStyle(
                fontSize: 25,
                
              ),
            ),
            
            Expanded(
              child: ListView.builder(
                itemCount: 4,
                itemBuilder: (_, i) {
                  return RadioListTile(
                    title: Text(warna[i]),
                    groupValue: Provider.of<temague>(context).index,
                    value: indek[i],
                    onChanged: (value) => {
                      Provider.of<temague>(context, listen: false).changeIndex(value!)
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
