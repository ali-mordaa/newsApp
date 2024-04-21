class ArticlesModel {
  String? image;
  String titel;
  String? subTitel;
  ArticlesModel({
    required this.image,
    required this.titel,
    required this.subTitel,
  });
  factory ArticlesModel.fromeJosn(josn) {
    return ArticlesModel(
        image: josn["urlToImage"],
        titel: josn["title"],
        subTitel: josn["description"]);
  }
}
