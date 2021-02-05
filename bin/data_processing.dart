import 'dart:io';

void main(List<String> arguments) {
  if (arguments.isEmpty) {
    print('Usages: dart data_processing.dart <inputFile.csv>');
    exit(1); //Non-Zero Error code on success
  }
  final inputFile = arguments.first;
  final lines = File(inputFile).readAsLinesSync();
  final totalDurationByTag = <String, double>{};
  var totalDuration = 0.0;
  lines.removeAt(0);
  for (var line in lines) {
    final values = line.split(',');

    final durationStr = values[3].replaceAll('"', '');
    final duration = double.parse(durationStr);

    final tag = values[5].replaceAll('"', '');
    final previousTotal = totalDurationByTag[tag];
    if (previousTotal == null) {
      totalDurationByTag[tag] = duration;
    } else {
      totalDurationByTag[tag] = previousTotal + duration;
    }
    totalDuration += duration;
  }

  for (var entry in totalDurationByTag.entries) {
    final durationFormatted = entry.value.toStringAsFixed(1);
    final tag = entry.key == '' ? 'Unregistered Tag' : entry.key;
    print('$tag: ${durationFormatted}h');
  }
  print('Total Time Spent for All Tags: ${totalDuration.toStringAsFixed(1)}h');
}

//PSUEDO CODE
//lines=reafFile(inputFile)
//durationByTage= empty map
//lines.removeFirst();
//for (line in lines)
//  values=line.split(',')
//  duration=values[3]
//  tag=values[5]
//  update(durationByTag[tag],duration)
//end
//printAll(durationByTag)
