import 'package:equatable/equatable.dart';

class Dzikir extends Equatable {
  final int id;
  final List<String> textsDzikir;
  final String? title;
  final bool? isDay;
  final bool? isNight;
  final String? faedah;
  final String? description;
  final String? surah;
  final String suggestion;
  final String source;

  const Dzikir({
    required this.id,
    required this.textsDzikir,
    required this.suggestion,
    required this.source,
    this.title,
    this.faedah,
    this.isDay,
    this.isNight,
    this.description,
    this.surah,
  });

  @override
  List<Object?> get props => [
        id,
        suggestion,
        title,
        textsDzikir,
        faedah,
        isDay,
        isNight,
        description,
        surah,
        source,
      ];

  factory Dzikir.fromJson(Map<String, dynamic> dzikir) => Dzikir(
        id: dzikir['id'],
        suggestion:
            dzikir.containsKey('suggestion') && dzikir['suggestion'] != null
                ? dzikir['suggestion']
                : throw ArgumentError('suggestion value error'),
        textsDzikir: dzikir.containsKey('texts') && dzikir['texts'] != null
            ? dzikir['texts']
            : throw ArgumentError('dzikir[texts] value error'),
        title: dzikir.containsKey('title') && dzikir['title'] != null
            ? dzikir['title']
            : null,
        isDay: dzikir.containsKey('is_day') && dzikir['is_day'] != null
            ? dzikir['is_day']
            : null,
        isNight: dzikir.containsKey('is_night') && dzikir['is_night'] != null
            ? dzikir['is_night']
            : null,
        faedah: dzikir.containsKey('faedah') && dzikir['faedah'] != null
            ? dzikir['faedah']
            : null,
        description:
            dzikir.containsKey('description') && dzikir['description'] != null
                ? dzikir['description']
                : null,
        surah: dzikir.containsKey('surah') && dzikir['surah'] != null
            ? dzikir['surah']
            : null,
        source: dzikir.containsKey('source') && dzikir['source'] != null
            ? dzikir['source']
            : throw ArgumentError('source value error'),
      );
}
