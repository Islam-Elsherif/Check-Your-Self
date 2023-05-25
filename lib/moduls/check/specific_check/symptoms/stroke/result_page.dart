import 'package:diseases_checker/moduls/home/homepage.dart';
import 'package:diseases_checker/shared/components/constants.dart';
import 'package:flutter/material.dart';

class StrokeResultPage extends StatelessWidget {
  final List<String> selectedSymptoms;

  const StrokeResultPage({super.key, required this.selectedSymptoms});

  @override
  Widget build(BuildContext context) {
    // Sort the selected symptoms alphabetically
    selectedSymptoms.sort();

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.info),
        actions: [
          InkWell(
            child: const Icon(
              Icons.home,
              size: 37,
            ),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomePage(),
                )),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
        title: const Text('Results'),
      ),
      body: ListView.builder(
        itemCount: BspcList.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(BspcList[index].name),
            trailing: Text(BspcList[index].value),
          );
        },
      ),
    );
  }
}
