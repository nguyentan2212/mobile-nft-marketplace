class NFTItem {
  String name;
  String collectionName;
  double price;
  int likeCount;
  String image;

  NFTItem({this.name = '', this.collectionName = '', this.price = 0, this.likeCount = 0, this.image = ''});
}

var hotItems = [
  NFTItem(
      name: 'Samurai Cat #1', collectionName: 'Samurai Cat', price: 0.001, likeCount: 807, image: '0.jpg'),
  NFTItem(name: 'Samurai Cat #2', collectionName: 'Samurai Cat', price: 0.05, likeCount: 740, image: '1.jpg'),
  NFTItem(name: 'Samurai Cat #3', collectionName: 'Samurai Cat', price: 0.3, likeCount: 546, image: '2.jpg'),
  NFTItem(
      name: 'Samurai Cat #4', collectionName: 'Samurai Cat', price: 0.004, likeCount: 1020, image: '3.jpg'),
];
