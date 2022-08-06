class HighlightsModel {
  final String storeImage;
  final String storeTitle;
  final String campaignTitle;
  final double rating;
  final bool discount;

  HighlightsModel(
      {required this.storeImage,
      required this.discount,
      required this.storeTitle,
      required this.rating,
      required this.campaignTitle});
}
