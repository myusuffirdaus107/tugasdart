import 'dart:io';
 List <Map<String, dynamic>> matakuliah = [];
void main(){
  question();
}
question(){

  print('Apa yang anda cari?');
  print('1. Data diri');
  print('2. List matkul');
  print('3. Kata motivasi');
  print('Pilih angka untuk memilih');
  String? input = stdin.readLineSync()!;

  if (input == '1') {
    dataDiri();
  }

  if (input == '2') {
    dataMahasiswa();
  }

  if (input == '3') {
   kataMotivasi();
  }
}

perkenalan(name, age, address, hobby){
  print('Halo Nama saya '+name+', Umur saya '+age+', Saya berasal dari '+address+', Hobby saya '+hobby);
  question();
}

dataDiri(){
  var name = "M. Yusuf Firdaus";
  var age = '21';
  var address = "Majalaya";
  var hobby = "Bermain musik";

  var kenalan = perkenalan(name, age, address, hobby);
  print(kenalan);
  question();
}


dataMahasiswa(){
    print('Apa yang anda mau?');
    print('1. Input matkul');
    print('2. List matkul');
    print('Pilih angka untuk memilih');
    String? pilihanMatkul = stdin.readLineSync()!;

    if (pilihanMatkul == '1') {
      print('Masukan mata kuliah');
      String? matkul = stdin.readLineSync()!;

      print('Masukan nilai');
      String? nilai = stdin.readLineSync()!;
      matakuliah.add({
        "matkul": matkul,
        "nilai" : nilai
      });
      dataMahasiswa();
    }

    if (pilihanMatkul == '2'){
      print(matakuliah);
      dataMahasiswa();
    }
}


kataMotivasi() async {
  await line1();
  line2();
  line3();
  line4();
}

Future<void> line1() async {
  return await Future.delayed(Duration(seconds: 5), () => (
    print('Type hope on a silent screen,')
  ));
}

Future<void> line2() async {
  return await Future.delayed(Duration(seconds: 3), () => (
    print('Even though errors come one after another.')
  ));
}

Future<void> line3() async {
   return await Future.delayed(Duration(seconds: 2), () => (
    print('Every bug teaches a lesson,')
  ));
}

Future<void> line4() async {
   return await Future.delayed(Duration(seconds: 1), () => (
    print('That failure isnt the end, but rather a new beginning.')
  ));
}