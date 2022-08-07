import 'package:get/get.dart';
import '../models/all_products_model.dart';
import '../models/category_models.dart';
import '../models/highlights_model.dart';
import '../utils/constants.dart';

List<HighlightsModel> highlightsModelList = [
  HighlightsModel(
      discount: false,
      rating: 4.6,
      storeImage: AppConstants.gloriaJeans,
      storeTitle: "Gloria Jean's Coffees",
      campaignTitle: "4 Kampanya"),
  HighlightsModel(
      discount: true,
      rating: 3.2,
      storeImage: AppConstants.mcDonald,
      storeTitle: "McDonald's",
      campaignTitle: "2 Kampanya"),
  HighlightsModel(
      discount: false,
      rating: 4.6,
      storeImage: AppConstants.gloriaJeans,
      storeTitle: "Gloria Jean's Coffees",
      campaignTitle: "4 Kampanya"),
  HighlightsModel(
      discount: true,
      rating: 3.2,
      storeImage: AppConstants.mcDonald,
      storeTitle: "McDonald's",
      campaignTitle: "2 Kampanya"),
  HighlightsModel(
      discount: false,
      rating: 4.6,
      storeImage: AppConstants.gloriaJeans,
      storeTitle: "Gloria Jean's Coffees",
      campaignTitle: "4 Kampanya"),
  HighlightsModel(
      discount: true,
      rating: 3.2,
      storeImage: AppConstants.mcDonald,
      storeTitle: "McDonald's",
      campaignTitle: "2 Kampanya")

];

List<CategoryModel> categoryModelList = [
  CategoryModel(title: "Hepsi", image: AppConstants.all),
  CategoryModel(title: "Kahve", image: AppConstants.coffee),
  CategoryModel(title: "Kahvaltı", image: AppConstants.breakfast),
  CategoryModel(title: "Hepsi", image: AppConstants.all),
  CategoryModel(title: "Kahve", image: AppConstants.coffee),
  CategoryModel(title: "Kahvaltı", image: AppConstants.breakfast),
];

List<AllProducts> allProductsList = [
  AllProducts(
      image: AppConstants.holidayCheers,
      productName: "Kahve Festivali",
      productPrice: 29.90,
      storeName: "Gloria Jean's Coffees",
      info: "info".tr,
      discountedPrice: 19.90),
  AllProducts(
      image: AppConstants.burger,
      productName: "Cheese Burger Menu",
      productPrice: 49.90,
      storeName: "McDonald's",
      info: "info".tr,
      discountedPrice: 24.90),
  AllProducts(
      image: AppConstants.holidayCheers,
      productName: "Tatlı Festivali",
      productPrice: 29.90,
      storeName: "Gloria Jean's Coffees",
      info: "info".tr,
      discountedPrice: 19.90),
  AllProducts(
      image: AppConstants.burger,
      productName: "Whopper Burger Menu",
      productPrice: 29.90,
      storeName: "McDonald's",
      info: "info".tr,
      discountedPrice: 19.90)
];
