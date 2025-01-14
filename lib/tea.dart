// SPDX-License-Identifier: GPL-3.0-or-later

class Tea {
  String name;
  int temperature;
  double gPer100Ml;
  List<Infusion> infusions;
  String notes;

  Tea(this.name, this.temperature, this.gPer100Ml, this.infusions, this.notes);

  Tea.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        temperature = json['temperature'],
        gPer100Ml = json['gPer100Ml'] is double
            ? json['gPer100Ml']
            : double.parse(json['gPer100Ml'].toString()),
        infusions = List<Infusion>.from(
            json['infusions'].map((i) => Infusion.fromJson(i))),
        notes = json['notes'];

  Map toJson() => {
        'name': name,
        'temperature': temperature,
        'gPer100Ml': gPer100Ml,
        'infusions': infusions,
        'notes': notes
      };
}

class Infusion {
  int duration;

  Infusion(this.duration);

  Infusion.fromJson(Map<String, dynamic> json) : duration = json['duration'];

  Map toJson() => {'duration': duration};
}
