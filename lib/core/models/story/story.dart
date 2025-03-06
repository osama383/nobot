import 'package:dart_mappable/dart_mappable.dart';
import 'package:nobot/core/models/firestore_document.dart';

part 'story.mapper.dart';

@MappableClass(ignoreNull: true)
class Story extends FirestoreDocument with StoryMappable {
  final String title;

  Story({required super.id, required this.title});
}

// class OpenStory extends Story with OpenStoryMappable {
//   OpenStory({required super.title});
// }

// @MappableClass()
// class ReadyStory extends Story with ReadyStoryMappable {
//   ReadyStory({required super.title});
// }

// @MappableClass()
// class InprogressStory extends Story with InprogressStoryMappable {
//   InprogressStory({required super.title});
// }

// @MappableClass()
// class ReviewableStory extends Story with ReviewableMappable {
//   ReviewableStory({required super.title});
// }

// @MappableClass()
// class FinishedStory extends Story with ReviewableMappable {
//   ReviewableStory({required super.title});
// }

