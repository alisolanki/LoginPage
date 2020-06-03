import 'data_format.dart';

class ArtistData {
  List<DataTemplate> _artistData = [
    DataTemplate(
      name: 'Ali',
      address: 'Andheri',
      phoneNumber: '+91766382909202',
      email: 'alisolanki@gmail.com',
    ),
    DataTemplate(
      name: 'Manan',
      address: 'Ghatkopar',
      phoneNumber: '+91766382909202',
      email: 'manan@gmail.com',
    ),
    DataTemplate(
      name: 'Nishit',
      address: 'Thane',
      phoneNumber: '+91766382909202',
      email: 'nishit@gmail.com',
    ),
    DataTemplate(
      name: 'Ali',
      address: 'Andheri',
      phoneNumber: '+91766382909202',
      email: 'alisolanki@gmail.com',
    ),
  ];
  String printDataName() {
    return (_artistData[0].name);
  }

  String printAddress() => _artistData[0].address;
  String printPhoneNumber() => _artistData[0].phoneNumber;
  String printEmail() => _artistData[0].email;
}
