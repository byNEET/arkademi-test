import 'dart:convert';

void main(List<String> arguments) {
  String satu(String nama, int umur) {
    var data = {
      'name': nama,
      'age': umur,
      'address': 'Kecamatan Kota Sumenep, Kabupaten Sumenep',
      'hobbies': ['Gaming', 'reading', 'coding'],
      'is_married': false,
      'ist_school': [
        {
          'name': 'MIN Ketapang',
          'year_in': '2000',
          'year_out': '2006',
          'major': null
        },
        {
          'name': 'SMPN 1 Tanjung Bumu',
          'year_in': '2006',
          'year_out': '2009',
          'major': null
        },
        {
          'name': 'MAN Ketapang',
          'year_in': '2009',
          'year_out': '2012',
          'major': 'IPA'
        },
        {
          'name': 'STT Nurul Jadid',
          'year_in': '2012',
          'year_out': '2017',
          'major': 'Teknik Informatika'
        }
      ],
      'skills': [
        {
          'skill_name': 'Gaming',
          'level': 'advanced',
        },
        {
          'skill_name': 'dart - flutter',
          'level': 'advanced',
        },
        {
          'skill_name': 'javascript',
          'level': 'beginner',
        },
        {
          'skill_name': 'adobe indesign, photoshop, xd',
          'level': 'beginner',
        },
        {
          'skill_name': 'masak nasi',
          'level': 'expert',
        }
      ],
      'interest_in_coding': true,
    };
    return jsonEncode(data);
  }

  print(satu('Khairul anas', 25));
}
