class WatchModel {
  final String image;
  final String title;
  final String subtitle;
  final String price;

  WatchModel({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });
}

List<WatchModel> watchItem = [
  WatchModel(
    image: 'assets/apple_watch.png',
    title: 'Apple Watch ',
    subtitle: 'Ultra 2 ',
    price: '\$ 999',
  ),
  WatchModel(
    image: 'assets/samsung_watch.png',
    title: 'Samsung Watch ',
    subtitle: 'Ganeration 5',
    price: '\$ 899',
  ),
  WatchModel(
    image: 'assets/watchh.jpg',
    title: 'Black Watch ',
    subtitle: 'Ultra 2 ',
    price: '\$ 999',
  ),
  WatchModel(
    image: 'assets/pink.jpg',
    title: 'Pink Watch ',
    subtitle: 'Ganeration 5',
    price: '\$ 889',
  ),
  WatchModel(
    image: 'assets/orange.jpg',
    title: 'Orange Watch ',
    subtitle: 'Ultra 2 ',
    price: '\$ 989',
  ),
  WatchModel(
    image: 'assets/smart watch ⌚️.jpg',
    title: 'Smart Watch ',
    subtitle: 'Ganeration 5',
    price: '\$ 879',
  ),
  WatchModel(
    image: 'assets/Sport_Band_Compatible_with_Apple_Watch_Bands_44mm_40mm_41mm_38mm.jpg',
    title: 'Rose Watch ',
    subtitle: 'Ultra 2 ',
    price: '\$ 979',
  ),
  WatchModel(
    image: 'assets/download.jpg',
    title: 'Samsung Watch ',
    subtitle: 'Ganeration 5',
    price: '\$ 899',
  ),
];
