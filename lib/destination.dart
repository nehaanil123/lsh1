import 'activity.dart';

class Destination {
  String imageUrl;
  String district;
  String description;
  List<Activity> activitiesI;
  //List<Activity> activitiesT;
  //List<Activity> activitiesW;

  Destination({
    this.imageUrl,
    this.district,
    this.description,
    this.activitiesI,
    //this.activitiesT,
    //this.activitiesW,
  });
}

List<Activity> activitiesI = [
  Activity(
    imageUrl: 'assets/images/idukki/hill view park.jpg',
    name: 'Hill View Park',
    rating: 3,
  ),
  Activity(
    imageUrl: 'assets/images/idukki/kulamavu dam.jpg',
    name: 'Kulamavu Dam',
    rating: 4,
  ),
  Activity(
    imageUrl: 'assets/images/idukki/idukki arch dam.jpg',
    name: 'Idukki Arch Dam',
    rating: 3,
  ),
];
/*List<Activity> activitiesT = [
  Activity(
    imageUrl: 'assets/images/trivandrum/kovalam.jpg',
    name: 'Kovalam Beach',
    rating: 3,
  ),
  Activity(
    imageUrl: 'assets/images/trivandrum/sree padmanabhaswamy temple.jpg',
    name: 'Sree Padmanabhaswamy Temple',
    rating: 4,
  ),
  Activity(
    imageUrl: 'assets/images/idukki/idukki arch dam.jpg',
    name: 'Idukki Arch Dam',
    rating: 3,
  ),
];
List<Activity> activitiesW = [
  Activity(
    imageUrl: 'assets/images/idukki/hill view park.jpg',
    name: 'Hill View Park',
    rating: 3,
  ),
  Activity(
    imageUrl: 'assets/images/idukki/kulamavu dam.jpg',
    name: 'Kulamavu Dam',
    rating: 4,
  ),
  Activity(
    imageUrl: 'assets/images/idukki/idukki arch dam.jpg',
    name: 'Idukki Arch Dam',
    rating: 3,
  ),
];*/

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/idukki/idukki.jpg',
    district: 'Idukki',
    description: 'Idukki district is a densely forested, mountainous region.',
    activitiesI: activitiesI,
  ),
  Destination(
    imageUrl: 'assets/images/trivandrum/trivandrum.jpg',
    district: 'Trivandrum',
    description: 'Thiruvananthapuram ) is the capital of Kerala.',
    activitiesI: activitiesI,
  ),
  Destination(
    imageUrl: 'assets/images/wayanad/wayanad.jpg',
    district: 'Wayanad',
    description: 'Wayanad is a rural district in Kerala state, southwest India.',
    activitiesI: activitiesI,
  ),
];
