// To parse this JSON data, do
//
//     final movieData = movieDataFromJson(jsonString);

import 'dart:convert';

MovieData movieDataFromJson(String str) => MovieData.fromJson(json.decode(str));

String movieDataToJson(MovieData data) => json.encode(data.toJson());

class MovieData {
  MovieData({
    this.id,
    this.title,
    this.originalTitle,
    this.fullTitle,
    this.type,
    this.year,
    this.image,
    this.releaseDate,
    this.runtimeMins,
    this.runtimeStr,
    this.plot,
    this.plotLocal,
    this.plotLocalIsRtl,
    this.awards,
    this.directors,
    this.directorList,
    this.writers,
    this.writerList,
    this.stars,
    this.starList,
    this.actorList,
    this.fullCast,
    this.genres,
    this.genreList,
    this.companies,
    this.companyList,
    this.countries,
    this.countryList,
    this.languages,
    this.languageList,
    this.contentRating,
    this.imDbRating,
    this.imDbRatingVotes,
    this.metacriticRating,
    this.ratings,
    this.wikipedia,
    this.posters,
    this.images,
    this.trailer,
    this.boxOffice,
    this.tagline,
    this.keywords,
    this.keywordList,
    this.similars,
    this.tvSeriesInfo,
    this.tvEpisodeInfo,
    this.errorMessage,
  });

  String? id;
  String? title;
  String? originalTitle;
  String? fullTitle;
  String? type;
  String? year;
  String? image;
  DateTime? releaseDate;
  String? runtimeMins;
  String? runtimeStr;
  String? plot;
  String? plotLocal;
  bool? plotLocalIsRtl;
  String? awards;
  String? directors;
  List<CompanyListElement>? directorList;
  String? writers;
  List<CompanyListElement>? writerList;
  String? stars;
  List<CompanyListElement>? starList;
  List<ActorList>? actorList;
  dynamic fullCast;
  String? genres;
  List<CountryListElement>? genreList;
  String? companies;
  List<CompanyListElement>? companyList;
  String? countries;
  List<CountryListElement>? countryList;
  String? languages;
  List<CountryListElement>? languageList;
  String? contentRating;
  dynamic imDbRating;
  dynamic imDbRatingVotes;
  dynamic metacriticRating;
  dynamic ratings;
  dynamic wikipedia;
  dynamic posters;
  dynamic images;
  dynamic trailer;
  BoxOffice? boxOffice;
  String? tagline;
  String? keywords;
  List<String>? keywordList;
  List<Similar>? similars;
  dynamic tvSeriesInfo;
  dynamic tvEpisodeInfo;
  dynamic errorMessage;

  factory MovieData.fromJson(Map<String, dynamic> json) => MovieData(
        id: json["id"],
        title: json["title"],
        originalTitle: json["originalTitle"],
        fullTitle: json["fullTitle"],
        type: json["type"],
        year: json["year"],
        image: json["image"],
        releaseDate: DateTime.parse(json["releaseDate"]),
        runtimeMins: json["runtimeMins"],
        runtimeStr: json["runtimeStr"],
        plot: json["plot"],
        plotLocal: json["plotLocal"],
        plotLocalIsRtl: json["plotLocalIsRtl"],
        awards: json["awards"],
        directors: json["directors"],
        directorList: List<CompanyListElement>.from(
            json["directorList"].map((x) => CompanyListElement.fromJson(x))),
        writers: json["writers"],
        writerList: List<CompanyListElement>.from(
            json["writerList"].map((x) => CompanyListElement.fromJson(x))),
        stars: json["stars"],
        starList: List<CompanyListElement>.from(
            json["starList"].map((x) => CompanyListElement.fromJson(x))),
        actorList: List<ActorList>.from(
            json["actorList"].map((x) => ActorList.fromJson(x))),
        fullCast: json["fullCast"],
        genres: json["genres"],
        genreList: List<CountryListElement>.from(
            json["genreList"].map((x) => CountryListElement.fromJson(x))),
        companies: json["companies"],
        companyList: List<CompanyListElement>.from(
            json["companyList"].map((x) => CompanyListElement.fromJson(x))),
        countries: json["countries"],
        countryList: List<CountryListElement>.from(
            json["countryList"].map((x) => CountryListElement.fromJson(x))),
        languages: json["languages"],
        languageList: List<CountryListElement>.from(
            json["languageList"].map((x) => CountryListElement.fromJson(x))),
        contentRating: json["contentRating"],
        imDbRating: json["imDbRating"],
        imDbRatingVotes: json["imDbRatingVotes"],
        metacriticRating: json["metacriticRating"],
        ratings: json["ratings"],
        wikipedia: json["wikipedia"],
        posters: json["posters"],
        images: json["images"],
        trailer: json["trailer"],
        boxOffice: BoxOffice.fromJson(json["boxOffice"]),
        tagline: json["tagline"],
        keywords: json["keywords"],
        keywordList: List<String>.from(json["keywordList"].map((x) => x)),
        similars: List<Similar>.from(
            json["similars"].map((x) => Similar.fromJson(x))),
        tvSeriesInfo: json["tvSeriesInfo"],
        tvEpisodeInfo: json["tvEpisodeInfo"],
        errorMessage: json["errorMessage"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "originalTitle": originalTitle,
        "fullTitle": fullTitle,
        "type": type,
        "year": year,
        "image": image,
        "releaseDate":
            "${releaseDate!.year.toString().padLeft(4, '0')}-${releaseDate!.month.toString().padLeft(2, '0')}-${releaseDate!.day.toString().padLeft(2, '0')}",
        "runtimeMins": runtimeMins,
        "runtimeStr": runtimeStr,
        "plot": plot,
        "plotLocal": plotLocal,
        "plotLocalIsRtl": plotLocalIsRtl,
        "awards": awards,
        "directors": directors,
        "directorList":
            List<dynamic>.from(directorList!.map((x) => x.toJson())),
        "writers": writers,
        "writerList": List<dynamic>.from(writerList!.map((x) => x.toJson())),
        "stars": stars,
        "starList": List<dynamic>.from(starList!.map((x) => x.toJson())),
        "actorList": List<dynamic>.from(actorList!.map((x) => x.toJson())),
        "fullCast": fullCast,
        "genres": genres,
        "genreList": List<dynamic>.from(genreList!.map((x) => x.toJson())),
        "companies": companies,
        "companyList": List<dynamic>.from(companyList!.map((x) => x.toJson())),
        "countries": countries,
        "countryList": List<dynamic>.from(countryList!.map((x) => x.toJson())),
        "languages": languages,
        "languageList":
            List<dynamic>.from(languageList!.map((x) => x.toJson())),
        "contentRating": contentRating,
        "imDbRating": imDbRating,
        "imDbRatingVotes": imDbRatingVotes,
        "metacriticRating": metacriticRating,
        "ratings": ratings,
        "wikipedia": wikipedia,
        "posters": posters,
        "images": images,
        "trailer": trailer,
        "boxOffice": boxOffice!.toJson(),
        "tagline": tagline,
        "keywords": keywords,
        "keywordList": List<dynamic>.from(keywordList!.map((x) => x)),
        "similars": List<dynamic>.from(similars!.map((x) => x.toJson())),
        "tvSeriesInfo": tvSeriesInfo,
        "tvEpisodeInfo": tvEpisodeInfo,
        "errorMessage": errorMessage,
      };
}

class ActorList {
  ActorList({
    this.id,
    this.image,
    this.name,
    this.asCharacter,
  });

  String? id;
  String? image;
  String? name;
  String? asCharacter;

  factory ActorList.fromJson(Map<String, dynamic> json) => ActorList(
        id: json["id"],
        image: json["image"],
        name: json["name"],
        asCharacter: json["asCharacter"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "image": image,
        "name": name,
        "asCharacter": asCharacter,
      };
}

class BoxOffice {
  BoxOffice({
    this.budget,
    this.openingWeekendUsa,
    this.grossUsa,
    this.cumulativeWorldwideGross,
  });

  String? budget;
  String? openingWeekendUsa;
  String? grossUsa;
  String? cumulativeWorldwideGross;

  factory BoxOffice.fromJson(Map<String, dynamic> json) => BoxOffice(
        budget: json["budget"],
        openingWeekendUsa: json["openingWeekendUSA"],
        grossUsa: json["grossUSA"],
        cumulativeWorldwideGross: json["cumulativeWorldwideGross"],
      );

  Map<String, dynamic> toJson() => {
        "budget": budget,
        "openingWeekendUSA": openingWeekendUsa,
        "grossUSA": grossUsa,
        "cumulativeWorldwideGross": cumulativeWorldwideGross,
      };
}

class CompanyListElement {
  CompanyListElement({
    this.id,
    this.name,
  });

  String? id;
  String? name;

  factory CompanyListElement.fromJson(Map<String, dynamic> json) =>
      CompanyListElement(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };
}

class CountryListElement {
  CountryListElement({
    this.key,
    this.value,
  });

  String? key;
  String? value;

  factory CountryListElement.fromJson(Map<String, dynamic> json) =>
      CountryListElement(
        key: json["key"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "value": value,
      };
}

class Similar {
  Similar({
    this.id,
    this.title,
    this.image,
    this.imDbRating,
  });

  String? id;
  String? title;
  String? image;
  String? imDbRating;

  factory Similar.fromJson(Map<String, dynamic> json) => Similar(
        id: json["id"],
        title: json["title"],
        image: json["image"],
        imDbRating: json["imDbRating"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "image": image,
        "imDbRating": imDbRating,
      };
}
