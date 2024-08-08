import 'dart:convert';

class BlogResponse {
  List<Blog>? data;
  Meta? meta;

  BlogResponse({
    this.data,
    this.meta,
  });

  factory BlogResponse.fromRawJson(String str) =>
      BlogResponse.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory BlogResponse.fromJson(Map<String, dynamic> json) => BlogResponse(
        data: json["data"] == null
            ? []
            : List<Blog>.from(json["data"]!.map((x) => Blog.fromJson(x))),
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? []
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "meta": meta?.toJson(),
      };
}

class Blog {
  int? id;
  DateTime? createdAt;
  String? date;
  String? time;
  String? title;
  String? content;

  Blog({
    this.id,
    this.createdAt,
    this.date,
    this.time,
    this.title,
    this.content,
  });

  factory Blog.fromRawJson(String str) => Blog.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Blog.fromJson(Map<String, dynamic> json) => Blog(
        id: json["id"],
        createdAt: json["created_at"] == null
            ? null
            : DateTime.parse(json["created_at"]),
        date: json["date"],
        time: json["time"],
        title: json["title"],
        content: json["content"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt?.toIso8601String(),
        "date": date,
        "time": time,
        "title": title,
        "content": content,
      };
}

class Meta {
  int? total;
  String? currentPage;
  String? limit;
  int? totalPages;

  Meta({
    this.total,
    this.currentPage,
    this.limit,
    this.totalPages,
  });

  factory Meta.fromRawJson(String str) => Meta.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        total: json["total"],
        currentPage: json["current_page"],
        limit: json["limit"],
        totalPages: json["total_pages"],
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "current_page": currentPage,
        "limit": limit,
        "total_pages": totalPages,
      };
}
