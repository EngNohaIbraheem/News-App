import 'Source.dart';

/// source : {"id":"bbc-news","name":"BBC News"}
/// author : null
/// title : "Nepal plane crash: 'Smell of smoke still hangs in the air here'"
/// description : "The BBC's Rajini Vaidyanathan visits the site of the Sunday's plane crash in Pokhara, Nepal."
/// url : "https://www.bbc.co.uk/news/av/world-asia-64292334"
/// urlToImage : "https://ichef.bbci.co.uk/news/1024/branded_news/0EE3/production/_128311830_p0dwnr7c.jpg"
/// publishedAt : "2023-01-16T12:27:55Z"
/// content : "The BBC's Rajini Vaidyanathan visits the site of the Sunday's plane crash in Pokhara, Nepal.\r\nThere were 72 passengers and crew aboard the Yeti Airlines flight from Kathmandu to the tourist town of P… [+150 chars]"
class News {
  News({
      Sources? source,
    String? author,
      String? title, 
      String? description, 
      String? url, 
      String? urlToImage, 
      String? publishedAt, 
      String? content,}){
    _source = source;
    _author = author;
    _title = title;
    _description = description;
    _url = url;
    _urlToImage = urlToImage;
    _publishedAt = publishedAt;
    _content = content;
}

  News.fromJson(dynamic json) {
    _source = (json['source'] != null ? source?.toJson(json['source']) : null) as Sources?;
    _author = json['author'];
    _title = json['title'];
    _description = json['description'];
    _url = json['url'];
    _urlToImage = json['urlToImage'];
    _publishedAt = json['publishedAt'];
    _content = json['content'];
  }
  Sources? _source;
  String? _author;
  String? _title;
  String? _description;
  String? _url;
  String? _urlToImage;
  String? _publishedAt;
  String? _content;
  News copyWith({  Sources? source,
    String? author,
  String? title,
  String? description,
  String? url,
  String? urlToImage,
  String? publishedAt,
  String? content,
}) => News(  source: source ?? _source,
  author: author ?? _author,
  title: title ?? _title,
  description: description ?? _description,
  url: url ?? _url,
  urlToImage: urlToImage ?? _urlToImage,
  publishedAt: publishedAt ?? _publishedAt,
  content: content ?? _content,
);
  Sources? get source => _source;
  String? get author => _author;
  String? get title => _title;
  String? get description => _description;
  String? get url => _url;
  String? get urlToImage => _urlToImage;
  String? get publishedAt => _publishedAt;
  String? get content => _content;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_source != null) {
      map['sources'] = Sources?.map((v) => v.toJson()).toList();
    }
    map['author'] = _author;
    map['title'] = _title;
    map['description'] = _description;
    map['url'] = _url;
    map['urlToImage'] = _urlToImage;
    map['publishedAt'] = _publishedAt;
    map['content'] = _content;
    return map;
  }

}