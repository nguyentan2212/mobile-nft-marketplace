class Collection {
  String name;
  String image;
  String nftType;

  Collection({this.name = '', this.image = '', this.nftType = ''});
}

var hotCollections = [
  Collection(name: 'collection 1', image: '1.png', nftType: 'ERC721'),
  Collection(name: 'collection 2', image: '2.png', nftType: 'ERC721'),
  Collection(name: 'collection 3', image: '3.jpg', nftType: 'ERC721'),
];
