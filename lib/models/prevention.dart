class PreventionModel {
  const PreventionModel(this.image, this.text);
  final String image;
  final String text;
}

const List<PreventionModel> allPreventions = <PreventionModel>[
  PreventionModel('assets/1.jpg', 'Avoid close contact'),
  PreventionModel('assets/2.jpg', 'Cleans your hands offten'),
  PreventionModel('assets/3.jpg', 'Wear a facemask'),
];
