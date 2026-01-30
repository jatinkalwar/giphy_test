class SearchGifsModel {
    SearchGifsModel({
         this.data = const [],
         this.meta,
         this.pagination,
    });

    final List<Datum> data;
    final Meta? meta;
    final Pagination? pagination;

    SearchGifsModel copyWith({
        List<Datum>? data,
        Meta? meta,
        Pagination? pagination,
    }) {
        return SearchGifsModel(
            data: data ?? this.data,
            meta: meta ?? this.meta,
            pagination: pagination ?? this.pagination,
        );
    }

    factory SearchGifsModel.fromJson(Map<String, dynamic> json){ 
        return SearchGifsModel(
            data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
            meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
            pagination: json["pagination"] == null ? null : Pagination.fromJson(json["pagination"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "data": data.map((x) => x?.toJson()).toList(),
        "meta": meta?.toJson(),
        "pagination": pagination?.toJson(),
    };

    @override
    String toString(){
        return "$data, $meta, $pagination, ";
    }

}

class Datum {
    Datum({
        required this.type,
        required this.id,
        required this.url,
        required this.slug,
        required this.bitlyGifUrl,
        required this.bitlyUrl,
        required this.embedUrl,
        required this.username,
        required this.source,
        required this.title,
        required this.rating,
        required this.contentUrl,
        required this.sourceTld,
        required this.sourcePostUrl,
        required this.isSticker,
        required this.importDatetime,
        required this.trendingDatetime,
        required this.images,
        required this.user,
        required this.analyticsResponsePayload,
        required this.analytics,
        required this.altText,
        required this.isLowContrast,
    });

    final String type;
    final String id;
    final String url;
    final String slug;
    final String bitlyGifUrl;
    final String bitlyUrl;
    final String embedUrl;
    final String username;
    final String source;
    final String title;
    final String rating;
    final String contentUrl;
    final String sourceTld;
    final String sourcePostUrl;
    final num isSticker;
    final DateTime? importDatetime;
    final String trendingDatetime;
    final Images? images;
    final User? user;
    final String analyticsResponsePayload;
    final Analytics? analytics;
    final String altText;
    final bool isLowContrast;

    Datum copyWith({
        String? type,
        String? id,
        String? url,
        String? slug,
        String? bitlyGifUrl,
        String? bitlyUrl,
        String? embedUrl,
        String? username,
        String? source,
        String? title,
        String? rating,
        String? contentUrl,
        String? sourceTld,
        String? sourcePostUrl,
        num? isSticker,
        DateTime? importDatetime,
        String? trendingDatetime,
        Images? images,
        User? user,
        String? analyticsResponsePayload,
        Analytics? analytics,
        String? altText,
        bool? isLowContrast,
    }) {
        return Datum(
            type: type ?? this.type,
            id: id ?? this.id,
            url: url ?? this.url,
            slug: slug ?? this.slug,
            bitlyGifUrl: bitlyGifUrl ?? this.bitlyGifUrl,
            bitlyUrl: bitlyUrl ?? this.bitlyUrl,
            embedUrl: embedUrl ?? this.embedUrl,
            username: username ?? this.username,
            source: source ?? this.source,
            title: title ?? this.title,
            rating: rating ?? this.rating,
            contentUrl: contentUrl ?? this.contentUrl,
            sourceTld: sourceTld ?? this.sourceTld,
            sourcePostUrl: sourcePostUrl ?? this.sourcePostUrl,
            isSticker: isSticker ?? this.isSticker,
            importDatetime: importDatetime ?? this.importDatetime,
            trendingDatetime: trendingDatetime ?? this.trendingDatetime,
            images: images ?? this.images,
            user: user ?? this.user,
            analyticsResponsePayload: analyticsResponsePayload ?? this.analyticsResponsePayload,
            analytics: analytics ?? this.analytics,
            altText: altText ?? this.altText,
            isLowContrast: isLowContrast ?? this.isLowContrast,
        );
    }

    factory Datum.fromJson(Map<String, dynamic> json){ 
        return Datum(
            type: json["type"] ?? "",
            id: json["id"] ?? "",
            url: json["url"] ?? "",
            slug: json["slug"] ?? "",
            bitlyGifUrl: json["bitly_gif_url"] ?? "",
            bitlyUrl: json["bitly_url"] ?? "",
            embedUrl: json["embed_url"] ?? "",
            username: json["username"] ?? "",
            source: json["source"] ?? "",
            title: json["title"] ?? "",
            rating: json["rating"] ?? "",
            contentUrl: json["content_url"] ?? "",
            sourceTld: json["source_tld"] ?? "",
            sourcePostUrl: json["source_post_url"] ?? "",
            isSticker: json["is_sticker"] ?? 0,
            importDatetime: DateTime.tryParse(json["import_datetime"] ?? ""),
            trendingDatetime: json["trending_datetime"] ?? "",
            images: json["images"] == null ? null : Images.fromJson(json["images"]),
            user: json["user"] == null ? null : User.fromJson(json["user"]),
            analyticsResponsePayload: json["analytics_response_payload"] ?? "",
            analytics: json["analytics"] == null ? null : Analytics.fromJson(json["analytics"]),
            altText: json["alt_text"] ?? "",
            isLowContrast: json["is_low_contrast"] ?? false,
        );
    }

    Map<String, dynamic> toJson() => {
        "type": type,
        "id": id,
        "url": url,
        "slug": slug,
        "bitly_gif_url": bitlyGifUrl,
        "bitly_url": bitlyUrl,
        "embed_url": embedUrl,
        "username": username,
        "source": source,
        "title": title,
        "rating": rating,
        "content_url": contentUrl,
        "source_tld": sourceTld,
        "source_post_url": sourcePostUrl,
        "is_sticker": isSticker,
        "import_datetime": importDatetime?.toIso8601String(),
        "trending_datetime": trendingDatetime,
        "images": images?.toJson(),
        "user": user?.toJson(),
        "analytics_response_payload": analyticsResponsePayload,
        "analytics": analytics?.toJson(),
        "alt_text": altText,
        "is_low_contrast": isLowContrast,
    };

    @override
    String toString(){
        return "$type, $id, $url, $slug, $bitlyGifUrl, $bitlyUrl, $embedUrl, $username, $source, $title, $rating, $contentUrl, $sourceTld, $sourcePostUrl, $isSticker, $importDatetime, $trendingDatetime, $images, $user, $analyticsResponsePayload, $analytics, $altText, $isLowContrast, ";
    }

}

class Analytics {
    Analytics({
        required this.onload,
        required this.onclick,
        required this.onsent,
    });

    final Onclick? onload;
    final Onclick? onclick;
    final Onclick? onsent;

    Analytics copyWith({
        Onclick? onload,
        Onclick? onclick,
        Onclick? onsent,
    }) {
        return Analytics(
            onload: onload ?? this.onload,
            onclick: onclick ?? this.onclick,
            onsent: onsent ?? this.onsent,
        );
    }

    factory Analytics.fromJson(Map<String, dynamic> json){ 
        return Analytics(
            onload: json["onload"] == null ? null : Onclick.fromJson(json["onload"]),
            onclick: json["onclick"] == null ? null : Onclick.fromJson(json["onclick"]),
            onsent: json["onsent"] == null ? null : Onclick.fromJson(json["onsent"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "onload": onload?.toJson(),
        "onclick": onclick?.toJson(),
        "onsent": onsent?.toJson(),
    };

    @override
    String toString(){
        return "$onload, $onclick, $onsent, ";
    }

}

class Onclick {
    Onclick({
        required this.url,
    });

    final String url;

    Onclick copyWith({
        String? url,
    }) {
        return Onclick(
            url: url ?? this.url,
        );
    }

    factory Onclick.fromJson(Map<String, dynamic> json){ 
        return Onclick(
            url: json["url"] ?? "",
        );
    }

    Map<String, dynamic> toJson() => {
        "url": url,
    };

    @override
    String toString(){
        return "$url, ";
    }

}

class Images {
    Images({
        required this.original,
        required this.fixedHeight,
        required this.fixedHeightDownsampled,
        required this.fixedHeightSmall,
        required this.fixedWidth,
        required this.fixedWidthDownsampled,
        required this.fixedWidthSmall,
    });

    final FixedHeight? original;
    final FixedHeight? fixedHeight;
    final FixedHeight? fixedHeightDownsampled;
    final FixedHeight? fixedHeightSmall;
    final FixedHeight? fixedWidth;
    final FixedHeight? fixedWidthDownsampled;
    final FixedHeight? fixedWidthSmall;

    Images copyWith({
        FixedHeight? original,
        FixedHeight? fixedHeight,
        FixedHeight? fixedHeightDownsampled,
        FixedHeight? fixedHeightSmall,
        FixedHeight? fixedWidth,
        FixedHeight? fixedWidthDownsampled,
        FixedHeight? fixedWidthSmall,
    }) {
        return Images(
            original: original ?? this.original,
            fixedHeight: fixedHeight ?? this.fixedHeight,
            fixedHeightDownsampled: fixedHeightDownsampled ?? this.fixedHeightDownsampled,
            fixedHeightSmall: fixedHeightSmall ?? this.fixedHeightSmall,
            fixedWidth: fixedWidth ?? this.fixedWidth,
            fixedWidthDownsampled: fixedWidthDownsampled ?? this.fixedWidthDownsampled,
            fixedWidthSmall: fixedWidthSmall ?? this.fixedWidthSmall,
        );
    }

    factory Images.fromJson(Map<String, dynamic> json){ 
        return Images(
            original: json["original"] == null ? null : FixedHeight.fromJson(json["original"]),
            fixedHeight: json["fixed_height"] == null ? null : FixedHeight.fromJson(json["fixed_height"]),
            fixedHeightDownsampled: json["fixed_height_downsampled"] == null ? null : FixedHeight.fromJson(json["fixed_height_downsampled"]),
            fixedHeightSmall: json["fixed_height_small"] == null ? null : FixedHeight.fromJson(json["fixed_height_small"]),
            fixedWidth: json["fixed_width"] == null ? null : FixedHeight.fromJson(json["fixed_width"]),
            fixedWidthDownsampled: json["fixed_width_downsampled"] == null ? null : FixedHeight.fromJson(json["fixed_width_downsampled"]),
            fixedWidthSmall: json["fixed_width_small"] == null ? null : FixedHeight.fromJson(json["fixed_width_small"]),
        );
    }

    Map<String, dynamic> toJson() => {
        "original": original?.toJson(),
        "fixed_height": fixedHeight?.toJson(),
        "fixed_height_downsampled": fixedHeightDownsampled?.toJson(),
        "fixed_height_small": fixedHeightSmall?.toJson(),
        "fixed_width": fixedWidth?.toJson(),
        "fixed_width_downsampled": fixedWidthDownsampled?.toJson(),
        "fixed_width_small": fixedWidthSmall?.toJson(),
    };

    @override
    String toString(){
        return "$original, $fixedHeight, $fixedHeightDownsampled, $fixedHeightSmall, $fixedWidth, $fixedWidthDownsampled, $fixedWidthSmall, ";
    }

}

class FixedHeight {
    FixedHeight({
        required this.height,
        required this.width,
        required this.size,
        required this.url,
        required this.mp4Size,
        required this.mp4,
        required this.webpSize,
        required this.webp,
        required this.frames,
        required this.hash,
    });

    final String height;
    final String width;
    final String size;
    final String url;
    final String mp4Size;
    final String mp4;
    final String webpSize;
    final String webp;
    final String frames;
    final String hash;

    FixedHeight copyWith({
        String? height,
        String? width,
        String? size,
        String? url,
        String? mp4Size,
        String? mp4,
        String? webpSize,
        String? webp,
        String? frames,
        String? hash,
    }) {
        return FixedHeight(
            height: height ?? this.height,
            width: width ?? this.width,
            size: size ?? this.size,
            url: url ?? this.url,
            mp4Size: mp4Size ?? this.mp4Size,
            mp4: mp4 ?? this.mp4,
            webpSize: webpSize ?? this.webpSize,
            webp: webp ?? this.webp,
            frames: frames ?? this.frames,
            hash: hash ?? this.hash,
        );
    }

    factory FixedHeight.fromJson(Map<String, dynamic> json){ 
        return FixedHeight(
            height: json["height"] ?? "",
            width: json["width"] ?? "",
            size: json["size"] ?? "",
            url: json["url"] ?? "",
            mp4Size: json["mp4_size"] ?? "",
            mp4: json["mp4"] ?? "",
            webpSize: json["webp_size"] ?? "",
            webp: json["webp"] ?? "",
            frames: json["frames"] ?? "",
            hash: json["hash"] ?? "",
        );
    }

    Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
        "size": size,
        "url": url,
        "mp4_size": mp4Size,
        "mp4": mp4,
        "webp_size": webpSize,
        "webp": webp,
        "frames": frames,
        "hash": hash,
    };

    @override
    String toString(){
        return "$height, $width, $size, $url, $mp4Size, $mp4, $webpSize, $webp, $frames, $hash, ";
    }

}

class User {
    User({
        required this.avatarUrl,
        required this.bannerImage,
        required this.bannerUrl,
        required this.profileUrl,
        required this.username,
        required this.displayName,
        required this.description,
        required this.instagramUrl,
        required this.websiteUrl,
        required this.isVerified,
    });

    final String avatarUrl;
    final String bannerImage;
    final String bannerUrl;
    final String profileUrl;
    final String username;
    final String displayName;
    final String description;
    final String instagramUrl;
    final String websiteUrl;
    final bool isVerified;

    User copyWith({
        String? avatarUrl,
        String? bannerImage,
        String? bannerUrl,
        String? profileUrl,
        String? username,
        String? displayName,
        String? description,
        String? instagramUrl,
        String? websiteUrl,
        bool? isVerified,
    }) {
        return User(
            avatarUrl: avatarUrl ?? this.avatarUrl,
            bannerImage: bannerImage ?? this.bannerImage,
            bannerUrl: bannerUrl ?? this.bannerUrl,
            profileUrl: profileUrl ?? this.profileUrl,
            username: username ?? this.username,
            displayName: displayName ?? this.displayName,
            description: description ?? this.description,
            instagramUrl: instagramUrl ?? this.instagramUrl,
            websiteUrl: websiteUrl ?? this.websiteUrl,
            isVerified: isVerified ?? this.isVerified,
        );
    }

    factory User.fromJson(Map<String, dynamic> json){ 
        return User(
            avatarUrl: json["avatar_url"] ?? "",
            bannerImage: json["banner_image"] ?? "",
            bannerUrl: json["banner_url"] ?? "",
            profileUrl: json["profile_url"] ?? "",
            username: json["username"] ?? "",
            displayName: json["display_name"] ?? "",
            description: json["description"] ?? "",
            instagramUrl: json["instagram_url"] ?? "",
            websiteUrl: json["website_url"] ?? "",
            isVerified: json["is_verified"] ?? false,
        );
    }

    Map<String, dynamic> toJson() => {
        "avatar_url": avatarUrl,
        "banner_image": bannerImage,
        "banner_url": bannerUrl,
        "profile_url": profileUrl,
        "username": username,
        "display_name": displayName,
        "description": description,
        "instagram_url": instagramUrl,
        "website_url": websiteUrl,
        "is_verified": isVerified,
    };

    @override
    String toString(){
        return "$avatarUrl, $bannerImage, $bannerUrl, $profileUrl, $username, $displayName, $description, $instagramUrl, $websiteUrl, $isVerified, ";
    }

}

class Meta {
    Meta({
        required this.status,
        required this.msg,
        required this.responseId,
    });

    final num status;
    final String msg;
    final String responseId;

    Meta copyWith({
        num? status,
        String? msg,
        String? responseId,
    }) {
        return Meta(
            status: status ?? this.status,
            msg: msg ?? this.msg,
            responseId: responseId ?? this.responseId,
        );
    }

    factory Meta.fromJson(Map<String, dynamic> json){ 
        return Meta(
            status: json["status"] ?? 0,
            msg: json["msg"] ?? "",
            responseId: json["response_id"] ?? "",
        );
    }

    Map<String, dynamic> toJson() => {
        "status": status,
        "msg": msg,
        "response_id": responseId,
    };

    @override
    String toString(){
        return "$status, $msg, $responseId, ";
    }

}

class Pagination {
    Pagination({
        required this.totalCount,
        required this.count,
        required this.offset,
    });

    final num totalCount;
    final num count;
    final num offset;

    Pagination copyWith({
        num? totalCount,
        num? count,
        num? offset,
    }) {
        return Pagination(
            totalCount: totalCount ?? this.totalCount,
            count: count ?? this.count,
            offset: offset ?? this.offset,
        );
    }

    factory Pagination.fromJson(Map<String, dynamic> json){ 
        return Pagination(
            totalCount: json["total_count"] ?? 0,
            count: json["count"] ?? 0,
            offset: json["offset"] ?? 0,
        );
    }

    Map<String, dynamic> toJson() => {
        "total_count": totalCount,
        "count": count,
        "offset": offset,
    };

    @override
    String toString(){
        return "$totalCount, $count, $offset, ";
    }

}

/*
{
	"data": [
		{
			"type": "sticker",
			"id": "6Mbgorc9nW6gfoPfWN",
			"url": "https://giphy.com/stickers/happy-dance-party-6Mbgorc9nW6gfoPfWN",
			"slug": "happy-dance-party-6Mbgorc9nW6gfoPfWN",
			"bitly_gif_url": "https://gph.is/st/MW44DkJ",
			"bitly_url": "https://gph.is/st/MW44DkJ",
			"embed_url": "https://giphy.com/embed/6Mbgorc9nW6gfoPfWN",
			"username": "gonryon",
			"source": "",
			"title": "Happy Get Down Sticker by GONRYON._.O",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2025-03-07 14:08:46",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "360",
					"width": "360",
					"size": "181616",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/giphy.gif",
					"mp4_size": "90932",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/giphy.mp4",
					"webp_size": "249256",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/giphy.webp",
					"frames": "88",
					"hash": "20039274c7cb51f69b6065d8f77ae406"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "102649",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/200.gif",
					"mp4_size": "106403",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/200.mp4",
					"webp_size": "174968",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "7329",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/200_d.gif",
					"webp_size": "12186",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "44942",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/100.gif",
					"mp4_size": "52861",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/100.mp4",
					"webp_size": "86630",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "102649",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/200w.gif",
					"mp4_size": "106403",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/200w.mp4",
					"webp_size": "158182",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "7329",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/200w_d.gif",
					"webp_size": "12186",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "44942",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/100w.gif",
					"mp4_size": "52861",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/100w.mp4",
					"webp_size": "86630",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/6Mbgorc9nW6gfoPfWN/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/gonryon/xp3WLnBWBLoI.gif",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/gonryon/",
				"username": "gonryon",
				"display_name": "GONRYON._.O",
				"description": "insta : gonryon._.o",
				"instagram_url": "https://instagram.com/gonryon._.o",
				"website_url": "https://www.instagram.com/gonryon._.o/",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPTZNYmdvcmM5blc2Z2ZvUGZXTiZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPTZNYmdvcmM5blc2Z2ZvUGZXTiZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPTZNYmdvcmM5blc2Z2ZvUGZXTiZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPTZNYmdvcmM5blc2Z2ZvUGZXTiZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "tFqKgC5KSoZRm",
			"url": "https://giphy.com/stickers/happy-tFqKgC5KSoZRm",
			"slug": "happy-tFqKgC5KSoZRm",
			"bitly_gif_url": "http://gph.is/1sGDi2t",
			"bitly_url": "http://gph.is/1sGDi2t",
			"embed_url": "https://giphy.com/embed/tFqKgC5KSoZRm",
			"username": "",
			"source": "",
			"title": "Happy Bunny Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2016-06-15 17:27:31",
			"trending_datetime": "2018-04-26 02:45:01",
			"images": {
				"original": {
					"height": "500",
					"width": "500",
					"size": "46173",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/giphy.gif",
					"mp4_size": "58793",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/giphy.mp4",
					"webp_size": "84014",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/giphy.webp",
					"frames": "14",
					"hash": "e5d02ef55116c918e551bcf558f71d0f"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "18857",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/200.gif",
					"mp4_size": "29889",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/200.mp4",
					"webp_size": "46150",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "8026",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/200_d.gif",
					"webp_size": "19700",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "8548",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/100.gif",
					"mp4_size": "16253",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/100.mp4",
					"webp_size": "20922",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "18857",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/200w.gif",
					"mp4_size": "29889",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/200w.mp4",
					"webp_size": "40340",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "8026",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/200w_d.gif",
					"webp_size": "19700",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "8548",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/100w.gif",
					"mp4_size": "16253",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/100w.mp4",
					"webp_size": "20922",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/tFqKgC5KSoZRm/100w.webp"
				}
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXRGcUtnQzVLU29aUm0mY3Q9cw",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXRGcUtnQzVLU29aUm0mY3Q9cw&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXRGcUtnQzVLU29aUm0mY3Q9cw&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXRGcUtnQzVLU29aUm0mY3Q9cw&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "evCPQk1auQyRwpelDr",
			"url": "https://giphy.com/stickers/kikitech-cute-cat-kiki-kikicat-evCPQk1auQyRwpelDr",
			"slug": "kikitech-cute-cat-kiki-kikicat-evCPQk1auQyRwpelDr",
			"bitly_gif_url": "https://gph.is/st/YK0W9j0",
			"bitly_url": "https://gph.is/st/YK0W9j0",
			"embed_url": "https://giphy.com/embed/evCPQk1auQyRwpelDr",
			"username": "kikicat",
			"source": "",
			"title": "Happy Laugh Sticker by KIKI",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-11-23 07:27:14",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "512",
					"width": "512",
					"size": "90882",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/giphy.gif",
					"mp4_size": "24373",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/giphy.mp4",
					"webp_size": "86988",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/giphy.webp",
					"frames": "10",
					"hash": "1ac061cc9ddc98c03add0fd893413741"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "32256",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/200.gif",
					"mp4_size": "19524",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/200.mp4",
					"webp_size": "35404",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "18943",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/200_d.gif",
					"webp_size": "24436",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "14948",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/100.gif",
					"mp4_size": "8798",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/100.mp4",
					"webp_size": "15108",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "32256",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/200w.gif",
					"mp4_size": "19524",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/200w.mp4",
					"webp_size": "31786",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "18943",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/200w_d.gif",
					"webp_size": "24436",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "14948",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/100w.gif",
					"mp4_size": "8798",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/100w.mp4",
					"webp_size": "15108",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/evCPQk1auQyRwpelDr/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/kikitech/rfztVhXMg0F8.jpg",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/kikicat/",
				"username": "kikicat",
				"display_name": "KIKI",
				"description": "Yo, I’m $KIKI\r\nI vibe with swimming, cuddling, strollin’ in silent parks, and obsessing over Shiba Inu\r\nDon’t @ me!\r\n\r\nCA: HhCLbkW6FwhriTkk81W8tYstsRCLUu6Y7Je1SQjVpump",
				"instagram_url": "https://instagram.com/kikicat.xyz",
				"website_url": "https://kikicat.xyz",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWV2Q1BRazFhdVF5UndwZWxEciZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWV2Q1BRazFhdVF5UndwZWxEciZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWV2Q1BRazFhdVF5UndwZWxEciZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWV2Q1BRazFhdVF5UndwZWxEciZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": true
		},
		{
			"type": "sticker",
			"id": "lOaMPfXXuaw5PRSDZv",
			"url": "https://giphy.com/stickers/cat-coko-mixflavor-lOaMPfXXuaw5PRSDZv",
			"slug": "cat-coko-mixflavor-lOaMPfXXuaw5PRSDZv",
			"bitly_gif_url": "https://gph.is/st/MxNk48m",
			"bitly_url": "https://gph.is/st/MxNk48m",
			"embed_url": "https://giphy.com/embed/lOaMPfXXuaw5PRSDZv",
			"username": "mixflavor",
			"source": "",
			"title": "Cat Love Sticker by MixFlavor 綜合口味",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2019-04-22 12:47:15",
			"trending_datetime": "2020-12-09 03:15:10",
			"images": {
				"original": {
					"height": "300",
					"width": "300",
					"size": "181478",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/giphy.gif",
					"mp4_size": "57341",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/giphy.mp4",
					"webp_size": "208738",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/giphy.webp",
					"frames": "20",
					"hash": "3145dc768c4d402905acf02e4e98d764"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "106080",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/200.gif",
					"mp4_size": "46794",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/200.mp4",
					"webp_size": "129080",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "30816",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/200_d.gif",
					"webp_size": "39728",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "45347",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/100.gif",
					"mp4_size": "24548",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/100.mp4",
					"webp_size": "51842",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "106080",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/200w.gif",
					"mp4_size": "46794",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/200w.mp4",
					"webp_size": "115388",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "30816",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/200w_d.gif",
					"webp_size": "39728",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "45347",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/100w.gif",
					"mp4_size": "24548",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/100w.mp4",
					"webp_size": "51842",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/lOaMPfXXuaw5PRSDZv/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/mixflavor/mzyJqi16B2er.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/mixflavor/",
				"username": "mixflavor",
				"display_name": "MixFlavor 綜合口味",
				"description": "「MixFlavor 綜合口味」是情侶雙人作家「小莓」和「大軒」的共用筆名。擅長以可愛治癒的風格創作包含酸甜苦辣的漫畫、動畫、貼圖、插畫、圖文⋯⋯等；代表作有《摳摳子的綜合口味》、《星期六的情話》、《入伍吧！魔法少女》。",
				"instagram_url": "https://instagram.com/blog.mixflavor",
				"website_url": "http://mixflavor.com",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWxPYU1QZlhYdWF3NVBSU0RadiZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWxPYU1QZlhYdWF3NVBSU0RadiZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWxPYU1QZlhYdWF3NVBSU0RadiZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWxPYU1QZlhYdWF3NVBSU0RadiZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "JoUoAzZEjEy9PrZ98N",
			"url": "https://giphy.com/stickers/jump-bounce-milkmocha-JoUoAzZEjEy9PrZ98N",
			"slug": "jump-bounce-milkmocha-JoUoAzZEjEy9PrZ98N",
			"bitly_gif_url": "https://gph.is/st/mZxNRZM",
			"bitly_url": "https://gph.is/st/mZxNRZM",
			"embed_url": "https://giphy.com/embed/JoUoAzZEjEy9PrZ98N",
			"username": "milkmochabear",
			"source": "",
			"title": "Happy Heart Sticker by milkmochabear",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2019-04-14 17:30:19",
			"trending_datetime": "2021-03-30 21:00:07",
			"images": {
				"original": {
					"height": "353",
					"width": "480",
					"size": "46221",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/giphy.gif",
					"mp4_size": "51420",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/giphy.mp4",
					"webp_size": "56828",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/giphy.webp",
					"frames": "9",
					"hash": "ebd67b29c04ce5b7ee5739841eeeb8af"
				},
				"fixed_height": {
					"height": "200",
					"width": "272",
					"size": "24828",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/200.gif",
					"mp4_size": "29775",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/200.mp4",
					"webp_size": "33784",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "272",
					"size": "15993",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/200_d.gif",
					"webp_size": "23374",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "136",
					"size": "12131",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/100.gif",
					"mp4_size": "14293",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/100.mp4",
					"webp_size": "14838",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/100.webp"
				},
				"fixed_width": {
					"height": "147",
					"width": "200",
					"size": "17980",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/200w.gif",
					"mp4_size": "21579",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/200w.mp4",
					"webp_size": "22232",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "147",
					"width": "200",
					"size": "11381",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/200w_d.gif",
					"webp_size": "17498",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "74",
					"width": "100",
					"size": "8981",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/100w.gif",
					"mp4_size": "10512",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/100w.mp4",
					"webp_size": "10850",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/JoUoAzZEjEy9PrZ98N/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/milkmochabear/obRKYdYh4M3w.jpg",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/milkmochabear/",
				"username": "milkmochabear",
				"display_name": "milkmochabear",
				"description": "Milk Mocha bear are 2 bears with opposite character who complete each other.",
				"instagram_url": "https://instagram.com/milkmochabear",
				"website_url": "http://klovastudios.com",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUpvVW9BelpFakV5OVByWjk4TiZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUpvVW9BelpFakV5OVByWjk4TiZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUpvVW9BelpFakV5OVByWjk4TiZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUpvVW9BelpFakV5OVByWjk4TiZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "IND0iJVuMb9QAmqrLc",
			"url": "https://giphy.com/stickers/frases-aniversrio-aniversarios-IND0iJVuMb9QAmqrLc",
			"slug": "frases-aniversrio-aniversarios-IND0iJVuMb9QAmqrLc",
			"bitly_gif_url": "https://gph.is/st/mQgz4nK",
			"bitly_url": "https://gph.is/st/mQgz4nK",
			"embed_url": "https://giphy.com/embed/IND0iJVuMb9QAmqrLc",
			"username": "mentecriativa3z",
			"source": "",
			"title": "Happy Birthday Sticker by Bel Diniz",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2023-10-19 01:31:17",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "65828",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/giphy.gif",
					"mp4_size": "48676",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/giphy.mp4",
					"webp_size": "54136",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/giphy.webp",
					"frames": "4",
					"hash": "d81a272a6d07b899ccf5ca6dcf234df6"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "22616",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/200.gif",
					"mp4_size": "20238",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/200.mp4",
					"webp_size": "20770",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "30711",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/200_d.gif",
					"webp_size": "20590",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "11694",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/100.gif",
					"mp4_size": "9420",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/100.mp4",
					"webp_size": "8114",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "22616",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/200w.gif",
					"mp4_size": "20238",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/200w.mp4",
					"webp_size": "18042",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "30711",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/200w_d.gif",
					"webp_size": "20590",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "11694",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/100w.gif",
					"mp4_size": "9420",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/100w.mp4",
					"webp_size": "8114",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/IND0iJVuMb9QAmqrLc/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/mentecriativa3z/33jVBCTwGrZi.jpg",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/mentecriativa3z/",
				"username": "mentecriativa3z",
				"display_name": "Bel Diniz",
				"description": "Stories criativos no Instagram e criadora de gifs e adesivos ",
				"instagram_url": "",
				"website_url": "http://instagram.com/mentecriativa3z?igshid=MzRlODBiNWFlZA==",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUlORDBpSlZ1TWI5UUFtcXJMYyZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUlORDBpSlZ1TWI5UUFtcXJMYyZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUlORDBpSlZ1TWI5UUFtcXJMYyZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUlORDBpSlZ1TWI5UUFtcXJMYyZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "oQzGGTeqFOjZEsgpar",
			"url": "https://giphy.com/stickers/happy-birthday-happybirthday-oQzGGTeqFOjZEsgpar",
			"slug": "happy-birthday-happybirthday-oQzGGTeqFOjZEsgpar",
			"bitly_gif_url": "https://gph.is/st/myWNX7y",
			"bitly_url": "https://gph.is/st/myWNX7y",
			"embed_url": "https://giphy.com/embed/oQzGGTeqFOjZEsgpar",
			"username": "curly_mads",
			"source": "",
			"title": "Happy Birthday Party Sticker by curly_mads",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2022-04-16 16:29:40",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "123166",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/giphy.gif",
					"mp4_size": "161308",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/giphy.mp4",
					"webp_size": "99784",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/giphy.webp",
					"frames": "4",
					"hash": "3b0e35b4eb2df942b42f36e9e8af904f"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "34664",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/200.gif",
					"mp4_size": "53362",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/200.mp4",
					"webp_size": "35380",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "54974",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/200_d.gif",
					"webp_size": "34922",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "15968",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/100.gif",
					"mp4_size": "20213",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/100.mp4",
					"webp_size": "12230",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "34664",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/200w.gif",
					"mp4_size": "53362",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/200w.mp4",
					"webp_size": "30616",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "54974",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/200w_d.gif",
					"webp_size": "34922",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "15968",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/100w.gif",
					"mp4_size": "20213",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/100w.mp4",
					"webp_size": "12230",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/oQzGGTeqFOjZEsgpar/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/curly_mads/vw7yxDqxc6u4.png",
				"banner_image": "https://media1.giphy.com/headers/curly_mads/MBurpz2gYH1w.gif",
				"banner_url": "https://media1.giphy.com/headers/curly_mads/MBurpz2gYH1w.gif",
				"profile_url": "https://giphy.com/curly_mads/",
				"username": "curly_mads",
				"display_name": "curly_mads",
				"description": "curly_mads is a graphic and character designer and GIF animator based in Tokyo",
				"instagram_url": "https://instagram.com/curly_mads",
				"website_url": "http://curlymads.com",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPW9RekdHVGVxRk9qWkVzZ3BhciZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPW9RekdHVGVxRk9qWkVzZ3BhciZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPW9RekdHVGVxRk9qWkVzZ3BhciZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPW9RekdHVGVxRk9qWkVzZ3BhciZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "Sticker gif. Text, 'Happy birthday,' is written in capital letters and each letter is drawn as different colored creatures.",
			"is_low_contrast": false
		},
		{
			"type": "text",
			"id": "dvU5pfucSqoSjJlMKl",
			"url": "https://giphy.com/stickers/weekend-sunday-yessiow-dvU5pfucSqoSjJlMKl",
			"slug": "weekend-sunday-yessiow-dvU5pfucSqoSjJlMKl",
			"bitly_gif_url": "https://gph.is/st/mQ46y0Y",
			"bitly_url": "https://gph.is/st/mQ46y0Y",
			"embed_url": "https://giphy.com/embed/dvU5pfucSqoSjJlMKl",
			"username": "yessiow",
			"source": "",
			"title": "Sticker by yessiow",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2019-05-13 10:56:00",
			"trending_datetime": "2021-02-14 09:15:12",
			"images": {
				"original": {
					"height": "274",
					"width": "480",
					"size": "16807",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/giphy.gif",
					"mp4_size": "16904",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/giphy.mp4",
					"webp_size": "12560",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/giphy.webp",
					"frames": "2",
					"hash": "66b4dfa1cb766690121a8ce49157ef0e"
				},
				"fixed_height": {
					"height": "200",
					"width": "350",
					"size": "11263",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/200.gif",
					"mp4_size": "9650",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/200.mp4",
					"webp_size": "9562",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "350",
					"size": "16973",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/200_d.gif",
					"webp_size": "9448",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "175",
					"size": "5424",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/100.gif",
					"mp4_size": "5149",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/100.mp4",
					"webp_size": "4112",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/100.webp"
				},
				"fixed_width": {
					"height": "114",
					"width": "200",
					"size": "6063",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/200w.gif",
					"mp4_size": "5781",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/200w.mp4",
					"webp_size": "4832",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "114",
					"width": "200",
					"size": "8319",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/200w_d.gif",
					"webp_size": "5414",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "57",
					"width": "100",
					"size": "3100",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/100w.gif",
					"mp4_size": "3343",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/100w.mp4",
					"webp_size": "2350",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9dHM/dvU5pfucSqoSjJlMKl/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/yessiow/MNW0OIG4oFfB.jpeg",
				"banner_image": "https://media1.giphy.com/headers/yessiow/DWFNbouX1rWC.gif",
				"banner_url": "https://media1.giphy.com/headers/yessiow/DWFNbouX1rWC.gif",
				"profile_url": "https://giphy.com/yessiow/",
				"username": "yessiow",
				"display_name": "yessiow",
				"description": "Hi, my name is Yessiow. I’m an illustrator and mural artist from Bali, Indonesia.\r\n--\r\nfor commission and collaboration: hello@yessiow.com",
				"instagram_url": "https://instagram.com/yessiow",
				"website_url": "https://yessiow.com/",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWR2VTVwZnVjU3FvU2pKbE1LbCZjdD10cw",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWR2VTVwZnVjU3FvU2pKbE1LbCZjdD10cw&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWR2VTVwZnVjU3FvU2pKbE1LbCZjdD10cw&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWR2VTVwZnVjU3FvU2pKbE1LbCZjdD10cw&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "ZeLSAK2yUlaplCULDd",
			"url": "https://giphy.com/stickers/happy-happybirthday-happybday-ZeLSAK2yUlaplCULDd",
			"slug": "happy-happybirthday-happybday-ZeLSAK2yUlaplCULDd",
			"bitly_gif_url": "https://gph.is/st/meXZ8JZ",
			"bitly_url": "https://gph.is/st/meXZ8JZ",
			"embed_url": "https://giphy.com/embed/ZeLSAK2yUlaplCULDd",
			"username": "mehakhooda",
			"source": "",
			"title": "Happy Birthday Art Sticker by mehakhooda",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2024-04-15 09:41:30",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "18079",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/giphy.gif",
					"mp4_size": "32483",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/giphy.mp4",
					"webp_size": "24164",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/giphy.webp",
					"frames": "2",
					"hash": "4e1a1555261dc83eeb8275fe1c1400ea"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "5632",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/200.gif",
					"mp4_size": "10445",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/200.mp4",
					"webp_size": "7710",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "8163",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/200_d.gif",
					"webp_size": "7634",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "2387",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/100.gif",
					"mp4_size": "5440",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/100.mp4",
					"webp_size": "2860",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "5632",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/200w.gif",
					"mp4_size": "10445",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/200w.mp4",
					"webp_size": "6540",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "8163",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/200w_d.gif",
					"webp_size": "7634",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "2387",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/100w.gif",
					"mp4_size": "5440",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/100w.mp4",
					"webp_size": "2860",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/ZeLSAK2yUlaplCULDd/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/mehakhooda/yiItG13Xx57K.JPG",
				"banner_image": "https://media1.giphy.com/channel_assets/mehakhooda/hOyT2HlTFS4B.gif",
				"banner_url": "https://media1.giphy.com/channel_assets/mehakhooda/hOyT2HlTFS4B.gif",
				"profile_url": "https://giphy.com/mehakhooda/",
				"username": "mehakhooda",
				"display_name": "mehakhooda",
				"description": "Drawing inspiration from all things chai and colourful, as an Indian illustrator, I'm always brewing up new ideas to make my art-tea-stic!",
				"instagram_url": "https://instagram.com/mehak_hooda_",
				"website_url": "http://www.behance.net/mehak_hooda",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVplTFNBSzJ5VWxhcGxDVUxEZCZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVplTFNBSzJ5VWxhcGxDVUxEZCZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVplTFNBSzJ5VWxhcGxDVUxEZCZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVplTFNBSzJ5VWxhcGxDVUxEZCZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "kiC7Ia2XndA8CbYwGv",
			"url": "https://giphy.com/stickers/love-illusbyjo-atelierbyjo-kiC7Ia2XndA8CbYwGv",
			"slug": "love-illusbyjo-atelierbyjo-kiC7Ia2XndA8CbYwGv",
			"bitly_gif_url": "https://gph.is/st/Yjk085k",
			"bitly_url": "https://gph.is/st/Yjk085k",
			"embed_url": "https://giphy.com/embed/kiC7Ia2XndA8CbYwGv",
			"username": "illusbyjo",
			"source": "",
			"title": "Laugh Love Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2024-08-20 05:03:41",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "244798",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/giphy.gif",
					"mp4_size": "63992",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/giphy.mp4",
					"webp_size": "151942",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/giphy.webp",
					"frames": "12",
					"hash": "1fc80b63b317f2e97161e9deadc3a802"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "74374",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/200.gif",
					"mp4_size": "23332",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/200.mp4",
					"webp_size": "63360",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "32438",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/200_d.gif",
					"webp_size": "34358",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "36334",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/100.gif",
					"mp4_size": "11326",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/100.mp4",
					"webp_size": "23496",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "74374",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/200w.gif",
					"mp4_size": "23332",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/200w.mp4",
					"webp_size": "55114",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "32438",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/200w_d.gif",
					"webp_size": "34358",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "36334",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/100w.gif",
					"mp4_size": "11326",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/100w.mp4",
					"webp_size": "23496",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/kiC7Ia2XndA8CbYwGv/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/illusbyjo/LESTl3PhEmvs.jpg",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/channel/illusbyjo/",
				"username": "illusbyjo",
				"display_name": "illusbyjo",
				"description": "hi hello! I'm an small illustration artist and I enjoy drawing cute things.",
				"instagram_url": "https://instagram.com/illus.byjo",
				"website_url": "http://instagram.com/illus.byjo",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWtpQzdJYTJYbmRBOENiWXdHdiZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWtpQzdJYTJYbmRBOENiWXdHdiZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWtpQzdJYTJYbmRBOENiWXdHdiZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWtpQzdJYTJYbmRBOENiWXdHdiZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "SaYYwYGETxu3IdQP8F",
			"url": "https://giphy.com/stickers/buonanotte-danielabachis-daninotte-SaYYwYGETxu3IdQP8F",
			"slug": "buonanotte-danielabachis-daninotte-SaYYwYGETxu3IdQP8F",
			"bitly_gif_url": "https://gph.is/st/YoJgao8",
			"bitly_url": "https://gph.is/st/YoJgao8",
			"embed_url": "https://giphy.com/embed/SaYYwYGETxu3IdQP8F",
			"username": "danielabachis_",
			"source": "",
			"title": "Happy Good Night Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-12-28 16:58:02",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "455",
					"width": "475",
					"size": "92476",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/giphy.gif",
					"mp4_size": "71720",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/giphy.mp4",
					"webp_size": "123222",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/giphy.webp",
					"frames": "8",
					"hash": "ce0284e3ec1f2cceb115c9fbbfbf1705"
				},
				"fixed_height": {
					"height": "200",
					"width": "209",
					"size": "36575",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/200.gif",
					"mp4_size": "28639",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/200.mp4",
					"webp_size": "41216",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "209",
					"size": "22928",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/200_d.gif",
					"webp_size": "31430",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "105",
					"size": "19332",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/100.gif",
					"mp4_size": "13621",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/100.mp4",
					"webp_size": "13818",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/100.webp"
				},
				"fixed_width": {
					"height": "192",
					"width": "200",
					"size": "35063",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/200w.gif",
					"mp4_size": "28672",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/200w.mp4",
					"webp_size": "33654",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "192",
					"width": "200",
					"size": "21866",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/200w_d.gif",
					"webp_size": "29518",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "96",
					"width": "100",
					"size": "18748",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/100w.gif",
					"mp4_size": "13913",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/100w.mp4",
					"webp_size": "12994",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/SaYYwYGETxu3IdQP8F/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/danielabachis_/w7TJyQeHGpn2.jpg",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/channel/danielabachis_/",
				"username": "danielabachis_",
				"display_name": "Daniela Bachis",
				"description": "✨Disegnatrice di GIF ✨- Valorizzo  il tuo Brand o profilo con delle GIF",
				"instagram_url": "https://instagram.com/danielabachis_",
				"website_url": "http://danielabachis.wordpress.com",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVNhWVl3WUdFVHh1M0lkUVA4RiZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVNhWVl3WUdFVHh1M0lkUVA4RiZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVNhWVl3WUdFVHh1M0lkUVA4RiZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVNhWVl3WUdFVHh1M0lkUVA4RiZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "Sticker gif. Cartoon of sleeping white crescent moon cradling a smiling yellow star amongst orange clouds rocks gently over a transparent background. Text, “Good Night.”",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "BmJiXiIT54OwtAy5BM",
			"url": "https://giphy.com/stickers/transparent-BmJiXiIT54OwtAy5BM",
			"slug": "transparent-BmJiXiIT54OwtAy5BM",
			"bitly_gif_url": "https://gph.is/st/myWZG3a",
			"bitly_url": "https://gph.is/st/myWZG3a",
			"embed_url": "https://giphy.com/embed/BmJiXiIT54OwtAy5BM",
			"username": "Jullustrator",
			"source": "",
			"title": "Happy Anniversary Love Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-05-04 13:59:51",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "10908",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/giphy.gif",
					"mp4_size": "27243",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/giphy.mp4",
					"webp_size": "10916",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/giphy.webp",
					"frames": "2",
					"hash": "a85fb5401daf0dea9e27f9ef61a453fd"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "3568",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/200.gif",
					"mp4_size": "8070",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/200.mp4",
					"webp_size": "3602",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "5814",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/200_d.gif",
					"webp_size": "3494",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "1582",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/100.gif",
					"mp4_size": "4457",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/100.mp4",
					"webp_size": "1450",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "3568",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/200w.gif",
					"mp4_size": "8070",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/200w.mp4",
					"webp_size": "3282",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "5814",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/200w_d.gif",
					"webp_size": "3494",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "1582",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/100w.gif",
					"mp4_size": "4457",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/100w.mp4",
					"webp_size": "1450",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/BmJiXiIT54OwtAy5BM/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/Jullustrator/qJ50IZIV3gcc.jpeg",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/channel/Jullustrator/",
				"username": "Jullustrator",
				"display_name": "Jullustrator",
				"description": "❤︎  calliJullustrator ❤︎ \r\n• MAGICsME gallery •\r\n• I'm a simple illustrator •\r\n• craft lover •\r\n• Thai • freelance •",
				"instagram_url": "https://instagram.com/Jullustrator",
				"website_url": "http://www.behance.net/Jullustrator",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUJtSmlYaUlUNTRPd3RBeTVCTSZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUJtSmlYaUlUNTRPd3RBeTVCTSZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUJtSmlYaUlUNTRPd3RBeTVCTSZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUJtSmlYaUlUNTRPd3RBeTVCTSZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "Vdh9RKmGOQtxRxwvTC",
			"url": "https://giphy.com/stickers/mashaandthebear-masha-mashaandbear-mashabear-Vdh9RKmGOQtxRxwvTC",
			"slug": "mashaandthebear-masha-mashaandbear-mashabear-Vdh9RKmGOQtxRxwvTC",
			"bitly_gif_url": "https://gph.is/st/Mw8OOlY",
			"bitly_url": "https://gph.is/st/Mw8OOlY",
			"embed_url": "https://giphy.com/embed/Vdh9RKmGOQtxRxwvTC",
			"username": "mashaandthebear",
			"source": "",
			"title": "Happy Dance Sticker by Masha and The Bear",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2020-08-28 08:32:16",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "1621422",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/giphy.gif",
					"mp4_size": "358047",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/giphy.mp4",
					"webp_size": "711990",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/giphy.webp",
					"frames": "71",
					"hash": "77bb827b3586b4e87dbe16880ae6eb43"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "386774",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/200.gif",
					"mp4_size": "148692",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/200.mp4",
					"webp_size": "225824",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "26319",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/200_d.gif",
					"webp_size": "20380",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "177428",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/100.gif",
					"mp4_size": "62300",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/100.mp4",
					"webp_size": "86404",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "386774",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/200w.gif",
					"mp4_size": "148692",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/200w.mp4",
					"webp_size": "192382",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "26319",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/200w_d.gif",
					"webp_size": "20380",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "177428",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/100w.gif",
					"mp4_size": "62300",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/100w.mp4",
					"webp_size": "86404",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Vdh9RKmGOQtxRxwvTC/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/mashaandthebear/NrU6myFlGCM2.png",
				"banner_image": "https://media1.giphy.com/channel_assets/mashaandthebear/0fU9ouPVWL1M.png",
				"banner_url": "https://media1.giphy.com/channel_assets/mashaandthebear/0fU9ouPVWL1M.png",
				"profile_url": "https://giphy.com/mashaandthebear/",
				"username": "mashaandthebear",
				"display_name": "Masha and The Bear",
				"description": "We are Masha and The Bear. \r\nMasha and the Bear is a worldwide popular series about the adventures of a mischievous little girl Masha who loves to explore the world, and her kind and caring friend, the Bear.",
				"instagram_url": "https://instagram.com/mashaandthebear",
				"website_url": "https://animaccord.com/",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVZkaDlSS21HT1F0eFJ4d3ZUQyZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVZkaDlSS21HT1F0eFJ4d3ZUQyZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVZkaDlSS21HT1F0eFJ4d3ZUQyZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVZkaDlSS21HT1F0eFJ4d3ZUQyZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "g5TrFfDUEn3PkksZXa",
			"url": "https://giphy.com/stickers/transparent-g5TrFfDUEn3PkksZXa",
			"slug": "transparent-g5TrFfDUEn3PkksZXa",
			"bitly_gif_url": "https://gph.is/st/Y9KyGL8",
			"bitly_url": "https://gph.is/st/Y9KyGL8",
			"embed_url": "https://giphy.com/embed/g5TrFfDUEn3PkksZXa",
			"username": "TRSTHSTRS",
			"source": "",
			"title": "Happy Fun Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2022-08-16 21:39:21",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "29577",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/giphy.gif",
					"mp4_size": "21750",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/giphy.mp4",
					"webp_size": "20146",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/giphy.webp",
					"frames": "12",
					"hash": "094904be37eb43d01f4ae2cdbbf68e08"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "15758",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/200.gif",
					"mp4_size": "9823",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/200.mp4",
					"webp_size": "16286",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "9705",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/200_d.gif",
					"webp_size": "10618",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "8991",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/100.gif",
					"mp4_size": "5161",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/100.mp4",
					"webp_size": "6254",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "15758",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/200w.gif",
					"mp4_size": "9823",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/200w.mp4",
					"webp_size": "12958",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "9705",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/200w_d.gif",
					"webp_size": "10618",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "8991",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/100w.gif",
					"mp4_size": "5161",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/100w.mp4",
					"webp_size": "6254",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/g5TrFfDUEn3PkksZXa/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/TRSTHSTRS/lDXQqf7LMBRR.jpg",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/channel/TRSTHSTRS/",
				"username": "TRSTHSTRS",
				"display_name": "TouristHistories",
				"description": "she/her - no commissions \r\nminimalistic animations & livestreams",
				"instagram_url": "https://instagram.com/TouristHistories",
				"website_url": "http://www.twitch.tv/touristhistories/about",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWc1VHJGZkRVRW4zUGtrc1pYYSZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWc1VHJGZkRVRW4zUGtrc1pYYSZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWc1VHJGZkRVRW4zUGtrc1pYYSZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWc1VHJGZkRVRW4zUGtrc1pYYSZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "Yi8MknjPjvh5Q0rtZz",
			"url": "https://giphy.com/stickers/bubble-water-drop-burst-your-Yi8MknjPjvh5Q0rtZz",
			"slug": "bubble-water-drop-burst-your-Yi8MknjPjvh5Q0rtZz",
			"bitly_gif_url": "https://gph.is/st/YkRV0zV",
			"bitly_url": "https://gph.is/st/YkRV0zV",
			"embed_url": "https://giphy.com/embed/Yi8MknjPjvh5Q0rtZz",
			"username": "pinkandven",
			"source": "",
			"title": "Happy I Love You Sticker by Pink&Ven",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-12-22 07:45:52",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "742118",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/giphy.gif",
					"mp4_size": "103764",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/giphy.mp4",
					"webp_size": "278124",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/giphy.webp",
					"frames": "35",
					"hash": "7dbba3964fb95f05e7e7a77b1d583797"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "190367",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/200.gif",
					"mp4_size": "36593",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/200.mp4",
					"webp_size": "102934",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "28296",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/200_d.gif",
					"webp_size": "21654",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "91036",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/100.gif",
					"mp4_size": "16874",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/100.mp4",
					"webp_size": "38546",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "190367",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/200w.gif",
					"mp4_size": "36593",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/200w.mp4",
					"webp_size": "86454",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "28296",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/200w_d.gif",
					"webp_size": "21654",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "91036",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/100w.gif",
					"mp4_size": "16874",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/100w.mp4",
					"webp_size": "38546",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Yi8MknjPjvh5Q0rtZz/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/pinkandven/kXKE9M7dVhrz.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/pinkandven/",
				"username": "pinkandven",
				"display_name": "Pink&Ven",
				"description": "Hi, We're Pink&Ven !",
				"instagram_url": "https://instagram.com/pink_ven.official",
				"website_url": "http://www.pinkven.com",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVlpOE1rbmpQanZoNVEwcnRaeiZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVlpOE1rbmpQanZoNVEwcnRaeiZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVlpOE1rbmpQanZoNVEwcnRaeiZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVlpOE1rbmpQanZoNVEwcnRaeiZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "DFyzqkEx2is0fz7EBq",
			"url": "https://giphy.com/stickers/atriumart-quack-meetquack-meet-DFyzqkEx2is0fz7EBq",
			"slug": "atriumart-quack-meetquack-meet-DFyzqkEx2is0fz7EBq",
			"bitly_gif_url": "https://gph.is/st/MPBWD78",
			"bitly_url": "https://gph.is/st/MPBWD78",
			"embed_url": "https://giphy.com/embed/DFyzqkEx2is0fz7EBq",
			"username": "atriumart",
			"source": "",
			"title": "Happy I Love You Sticker by Atrium",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2024-03-18 01:38:32",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "512",
					"width": "512",
					"size": "1049592",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/giphy.gif",
					"mp4_size": "171069",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/giphy.mp4",
					"webp_size": "570284",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/giphy.webp",
					"frames": "34",
					"hash": "3c7ec6fde4a8cef1ec318b3e20fc9d8e"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "200851",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/200.gif",
					"mp4_size": "49141",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/200.mp4",
					"webp_size": "129850",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "33456",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/200_d.gif",
					"webp_size": "26060",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "75325",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/100.gif",
					"mp4_size": "21759",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/100.mp4",
					"webp_size": "47224",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "200851",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/200w.gif",
					"mp4_size": "49141",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/200w.mp4",
					"webp_size": "109262",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "33456",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/200w_d.gif",
					"webp_size": "26060",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "75325",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/100w.gif",
					"mp4_size": "21759",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/100w.mp4",
					"webp_size": "47224",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/DFyzqkEx2is0fz7EBq/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/atriumart/JIM2PnxX2N2C.png",
				"banner_image": "https://media1.giphy.com/channel_assets/atriumart/BW4fsXlEkHy9.png",
				"banner_url": "https://media1.giphy.com/channel_assets/atriumart/BW4fsXlEkHy9.png",
				"profile_url": "https://giphy.com/atriumart/",
				"username": "atriumart",
				"display_name": "Atrium",
				"description": "Atrium Animation is an animation studio creating original content . Home of Meetquack and The Nouns Movie.",
				"instagram_url": "https://instagram.com/meetquack",
				"website_url": "http://atrium.art/",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPURGeXpxa0V4MmlzMGZ6N0VCcSZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPURGeXpxa0V4MmlzMGZ6N0VCcSZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPURGeXpxa0V4MmlzMGZ6N0VCcSZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPURGeXpxa0V4MmlzMGZ6N0VCcSZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "Sticker gif. White minimalist cartoon bunny with short ears uses both paws to blow kisses, which turn in to pink hearts and float away.",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "vwUmkYcei8XznQJRBC",
			"url": "https://giphy.com/stickers/amcstudio-holi-happyholi-holifestival-vwUmkYcei8XznQJRBC",
			"slug": "amcstudio-holi-happyholi-holifestival-vwUmkYcei8XznQJRBC",
			"bitly_gif_url": "https://gph.is/st/meX2X7L",
			"bitly_url": "https://gph.is/st/meX2X7L",
			"embed_url": "https://giphy.com/embed/vwUmkYcei8XznQJRBC",
			"username": "amcstudio",
			"source": "",
			"title": "Happy Festival Sticker by AMC Studio",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2023-03-06 14:20:31",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "101433",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/giphy.gif",
					"mp4_size": "68852",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/giphy.mp4",
					"webp_size": "234278",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/giphy.webp",
					"frames": "50",
					"hash": "c0896662c19ffffa91621df1daaae701"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "45549",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/200.gif",
					"mp4_size": "41534",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/200.mp4",
					"webp_size": "92228",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "7359",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/200_d.gif",
					"webp_size": "12876",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "23252",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/100.gif",
					"mp4_size": "19504",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/100.mp4",
					"webp_size": "36886",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "45549",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/200w.gif",
					"mp4_size": "41534",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/200w.mp4",
					"webp_size": "78764",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "7359",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/200w_d.gif",
					"webp_size": "12876",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "23252",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/100w.gif",
					"mp4_size": "19504",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/100w.mp4",
					"webp_size": "36886",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/vwUmkYcei8XznQJRBC/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/amcstudio/2HS2GcgaVGgI.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/amcstudio/",
				"username": "amcstudio",
				"display_name": "AMC Studio",
				"description": "AMC is a design studio. For over 10 years we have helped brands, agencies\r\nand platforms worldwide create high quality,\r\ncost efficient creative at amazing speed.",
				"instagram_url": "https://instagram.com/studio_amc",
				"website_url": "http://amc-studio.com",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXZ3VW1rWWNlaThYem5RSlJCQyZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXZ3VW1rWWNlaThYem5RSlJCQyZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXZ3VW1rWWNlaThYem5RSlJCQyZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXZ3VW1rWWNlaThYem5RSlJCQyZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "n5q0lzgvYJCjlfmk1f",
			"url": "https://giphy.com/stickers/transparent-n5q0lzgvYJCjlfmk1f",
			"slug": "transparent-n5q0lzgvYJCjlfmk1f",
			"bitly_gif_url": "https://gph.is/st/EbryPOv",
			"bitly_url": "https://gph.is/st/EbryPOv",
			"embed_url": "https://giphy.com/embed/n5q0lzgvYJCjlfmk1f",
			"username": "oimono_nakama",
			"source": "",
			"title": "Heart Love Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2024-07-21 03:53:41",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "320",
					"width": "370",
					"size": "30363",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/giphy.gif",
					"mp4_size": "34954",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/giphy.mp4",
					"webp_size": "34882",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/giphy.webp",
					"frames": "6",
					"hash": "186a6474edf27d6833c3c7aa448b9eef"
				},
				"fixed_height": {
					"height": "200",
					"width": "231",
					"size": "11904",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/200.gif",
					"mp4_size": "14464",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/200.mp4",
					"webp_size": "14788",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "231",
					"size": "11881",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/200_d.gif",
					"webp_size": "14764",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "116",
					"size": "4395",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/100.gif",
					"mp4_size": "6429",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/100.mp4",
					"webp_size": "5160",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/100.webp"
				},
				"fixed_width": {
					"height": "173",
					"width": "200",
					"size": "9339",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/200w.gif",
					"mp4_size": "11635",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/200w.mp4",
					"webp_size": "10850",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "173",
					"width": "200",
					"size": "9305",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/200w_d.gif",
					"webp_size": "11684",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "87",
					"width": "100",
					"size": "3593",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/100w.gif",
					"mp4_size": "5254",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/100w.mp4",
					"webp_size": "4556",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/n5q0lzgvYJCjlfmk1f/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/oimononakama/UFlnfjFturNt.jpeg",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/channel/oimono_nakama/",
				"username": "oimono_nakama",
				"display_name": "oimo",
				"description": "",
				"instagram_url": "https://instagram.com/oimono_nakama",
				"website_url": "http://creatorsbank.com/oimo_dayo",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPW41cTBsemd2WUpDamxmbWsxZiZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPW41cTBsemd2WUpDamxmbWsxZiZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPW41cTBsemd2WUpDamxmbWsxZiZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPW41cTBsemd2WUpDamxmbWsxZiZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "v15NFEXiCHhLfh8Ofy",
			"url": "https://giphy.com/stickers/happy-party-celebration-v15NFEXiCHhLfh8Ofy",
			"slug": "happy-party-celebration-v15NFEXiCHhLfh8Ofy",
			"bitly_gif_url": "https://gph.is/st/ENwkRo4",
			"bitly_url": "https://gph.is/st/ENwkRo4",
			"embed_url": "https://giphy.com/embed/v15NFEXiCHhLfh8Ofy",
			"username": "jasieljc",
			"source": "",
			"title": "Happy Birthday Dance Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2022-10-03 21:13:49",
			"trending_datetime": "2022-10-04 00:15:05",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "840707",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/giphy.gif",
					"mp4_size": "296329",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/giphy.mp4",
					"webp_size": "631498",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/giphy.webp",
					"frames": "45",
					"hash": "785b6686d7145bcf1e1747b1546cc904"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "247030",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/200.gif",
					"mp4_size": "151440",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/200.mp4",
					"webp_size": "241610",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "27294",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/200_d.gif",
					"webp_size": "33030",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "121032",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/100.gif",
					"mp4_size": "69124",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/100.mp4",
					"webp_size": "91530",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "247030",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/200w.gif",
					"mp4_size": "151440",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/200w.mp4",
					"webp_size": "212924",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "27294",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/200w_d.gif",
					"webp_size": "33030",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "121032",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/100w.gif",
					"mp4_size": "69124",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/100w.mp4",
					"webp_size": "91530",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/v15NFEXiCHhLfh8Ofy/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/jasieljc/dZ5Ila1DlxHD.gif",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/channel/jasieljc/",
				"username": "jasieljc",
				"display_name": "jasielf",
				"description": "I'm a 2D animator, I like to make shorts animation and share my creations for social network.",
				"instagram_url": "https://instagram.com/jaziel.tlimh",
				"website_url": "http://www.behance.net/jasieljuica",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXYxNU5GRVhpQ0hoTGZoOE9meSZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXYxNU5GRVhpQ0hoTGZoOE9meSZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXYxNU5GRVhpQ0hoTGZoOE9meSZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXYxNU5GRVhpQ0hoTGZoOE9meSZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "Sticker gif. A cartoon girl dances with confidence and verve, swishing her hips high and wide, back and forth.",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "yHo8UYuEhVLRkCcFwY",
			"url": "https://giphy.com/stickers/happy-birthday-happybi-yHo8UYuEhVLRkCcFwY",
			"slug": "happy-birthday-happybi-yHo8UYuEhVLRkCcFwY",
			"bitly_gif_url": "https://gph.is/st/mgD1Ppb",
			"bitly_url": "https://gph.is/st/mgD1Ppb",
			"embed_url": "https://giphy.com/embed/yHo8UYuEhVLRkCcFwY",
			"username": "haenaillust",
			"source": "",
			"title": "Happy Birthday Sticker by haenaillust",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-11-21 11:19:03",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "336",
					"width": "480",
					"size": "67323",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/giphy.gif",
					"mp4_size": "51166",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/giphy.mp4",
					"webp_size": "53198",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/giphy.webp",
					"frames": "3",
					"hash": "42502e343fa90f69b3c7f1aa12b9bd8d"
				},
				"fixed_height": {
					"height": "200",
					"width": "286",
					"size": "29217",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/200.gif",
					"mp4_size": "28444",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/200.mp4",
					"webp_size": "30220",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "286",
					"size": "47802",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/200_d.gif",
					"webp_size": "29952",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "143",
					"size": "12424",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/100.gif",
					"mp4_size": "12149",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/100.mp4",
					"webp_size": "11376",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/100.webp"
				},
				"fixed_width": {
					"height": "140",
					"width": "200",
					"size": "17135",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/200w.gif",
					"mp4_size": "18177",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/200w.mp4",
					"webp_size": "16888",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "140",
					"width": "200",
					"size": "26954",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/200w_d.gif",
					"webp_size": "19268",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "70",
					"width": "100",
					"size": "7397",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/100w.gif",
					"mp4_size": "8532",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/100w.mp4",
					"webp_size": "7162",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/yHo8UYuEhVLRkCcFwY/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/haenaillust/logGrmWsRDlb.jpeg",
				"banner_image": "https://media1.giphy.com/headers/haenaillust/1KyFLTEvbNZU.gif",
				"banner_url": "https://media1.giphy.com/headers/haenaillust/1KyFLTEvbNZU.gif",
				"profile_url": "https://giphy.com/haenaillust/",
				"username": "haenaillust",
				"display_name": "haenaillust",
				"description": "Please email me for commissions !!!\r\n\r\nhaenaillust@gmail.com",
				"instagram_url": "https://instagram.com/haenaillust",
				"website_url": "https://www.instagram.com/haenaillust/",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXlIbzhVWXVFaFZMUmtDY0Z3WSZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXlIbzhVWXVFaFZMUmtDY0Z3WSZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXlIbzhVWXVFaFZMUmtDY0Z3WSZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPXlIbzhVWXVFaFZMUmtDY0Z3WSZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "Sticker gif. Message in square blocky lettering hot pink outlined in cobalt blue, matching confetti and yellow 90s squiggles dancing all around. Text, 'Happy birthday.'",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "Nm1Ct7HwSjK67l8v5l",
			"url": "https://giphy.com/stickers/eat-yummy-nanamin-Nm1Ct7HwSjK67l8v5l",
			"slug": "eat-yummy-nanamin-Nm1Ct7HwSjK67l8v5l",
			"bitly_gif_url": "https://gph.is/st/m7b4AQY",
			"bitly_url": "https://gph.is/st/m7b4AQY",
			"embed_url": "https://giphy.com/embed/Nm1Ct7HwSjK67l8v5l",
			"username": "shirokumananamin",
			"source": "",
			"title": "Eat Up Love Sticker by nanamin",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2019-03-31 08:50:11",
			"trending_datetime": "2019-04-22 03:45:02",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "81057",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/giphy.gif",
					"mp4_size": "36563",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/giphy.mp4",
					"webp_size": "77722",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/giphy.webp",
					"frames": "8",
					"hash": "16fa503cb2cac46d562449c0e46f989d"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "26940",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/200.gif",
					"mp4_size": "11904",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/200.mp4",
					"webp_size": "27788",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "22355",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/200_d.gif",
					"webp_size": "23604",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "12687",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/100.gif",
					"mp4_size": "5784",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/100.mp4",
					"webp_size": "11124",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "26940",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/200w.gif",
					"mp4_size": "11904",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/200w.mp4",
					"webp_size": "23668",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "22355",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/200w_d.gif",
					"webp_size": "23604",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "12687",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/100w.gif",
					"mp4_size": "5784",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/100w.mp4",
					"webp_size": "11124",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/Nm1Ct7HwSjK67l8v5l/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/shirokumananamin/2nVntOyWkb1S.gif",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/shirokumananamin/",
				"username": "shirokumananamin",
				"display_name": "nanamin",
				"description": "Hi,my name is SHIROKUMA NANAMIN!\r\n\r\nPlease call me NANAMIN.\r\n\r\nfrom Japan.\r\n\r\nNice to meet you.",
				"instagram_url": "https://instagram.com/srkmnnmn",
				"website_url": "https://twitter.com/nnmn_7",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPU5tMUN0N0h3U2pLNjdsOHY1bCZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPU5tMUN0N0h3U2pLNjdsOHY1bCZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPU5tMUN0N0h3U2pLNjdsOHY1bCZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPU5tMUN0N0h3U2pLNjdsOHY1bCZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "dITMS6wPgWbozhh1l0",
			"url": "https://giphy.com/stickers/happy-ok-ichigen-dITMS6wPgWbozhh1l0",
			"slug": "happy-ok-ichigen-dITMS6wPgWbozhh1l0",
			"bitly_gif_url": "https://gph.is/st/E1dWyqN",
			"bitly_url": "https://gph.is/st/E1dWyqN",
			"embed_url": "https://giphy.com/embed/dITMS6wPgWbozhh1l0",
			"username": "ICHIGEN",
			"source": "",
			"title": "Happy Peace Sticker by ICHIGEN",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2024-10-17 06:39:48",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "750",
					"width": "750",
					"size": "151838",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/giphy.gif",
					"mp4_size": "51661",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/giphy.mp4",
					"webp_size": "193886",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/giphy.webp",
					"frames": "8",
					"hash": "f6a5a534af7d6547d786ef5b4c51ea08"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "37983",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/200.gif",
					"mp4_size": "23836",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/200.mp4",
					"webp_size": "56326",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "23879",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/200_d.gif",
					"webp_size": "44332",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "18200",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/100.gif",
					"mp4_size": "11088",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/100.mp4",
					"webp_size": "22594",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "37983",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/200w.gif",
					"mp4_size": "23836",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/200w.mp4",
					"webp_size": "48730",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "23879",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/200w_d.gif",
					"webp_size": "44332",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "18200",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/100w.gif",
					"mp4_size": "11088",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/100w.mp4",
					"webp_size": "22594",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/dITMS6wPgWbozhh1l0/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/ICHIGEN/otHFVGx8KPV1.gif",
				"banner_image": "https://media1.giphy.com/headers/ICHIGEN/3CrUALFMmUow.gif",
				"banner_url": "https://media1.giphy.com/headers/ICHIGEN/3CrUALFMmUow.gif",
				"profile_url": "https://giphy.com/ICHIGEN/",
				"username": "ICHIGEN",
				"display_name": "ICHIGEN",
				"description": "",
				"instagram_url": "https://instagram.com/hitokoto._",
				"website_url": "http://ichigen.jp",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWRJVE1TNndQZ1dib3poaDFsMCZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWRJVE1TNndQZ1dib3poaDFsMCZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWRJVE1TNndQZ1dib3poaDFsMCZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPWRJVE1TNndQZ1dib3poaDFsMCZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "00MJSmszGz1pB0gsea",
			"url": "https://giphy.com/stickers/happy-sun-good-morning-00MJSmszGz1pB0gsea",
			"slug": "happy-sun-good-morning-00MJSmszGz1pB0gsea",
			"bitly_gif_url": "https://gph.is/st/ERgdO53",
			"bitly_url": "https://gph.is/st/ERgdO53",
			"embed_url": "https://giphy.com/embed/00MJSmszGz1pB0gsea",
			"username": "abjahanbin",
			"source": "",
			"title": "Good Morning Love Sticker by abj.world",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2022-12-31 04:53:23",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "829924",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/giphy.gif",
					"mp4_size": "301810",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/giphy.mp4",
					"webp_size": "863058",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/giphy.webp",
					"frames": "90",
					"hash": "e7cb55f44917927711f9c76e1c2feca3"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "241208",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/200.gif",
					"mp4_size": "160802",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/200.mp4",
					"webp_size": "332224",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "14375",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/200_d.gif",
					"webp_size": "23148",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "124209",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/100.gif",
					"mp4_size": "79819",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/100.mp4",
					"webp_size": "136162",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "241208",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/200w.gif",
					"mp4_size": "160802",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/200w.mp4",
					"webp_size": "291588",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "14375",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/200w_d.gif",
					"webp_size": "23148",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "124209",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/100w.gif",
					"mp4_size": "79819",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/100w.mp4",
					"webp_size": "136162",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/00MJSmszGz1pB0gsea/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media1.giphy.com/avatars/abjahanbin/wQTvsZoRIsU1.gif",
				"banner_image": "https://media1.giphy.com/headers/abjahanbin/dkYJ8eF2p0pS.GIF",
				"banner_url": "https://media1.giphy.com/headers/abjahanbin/dkYJ8eF2p0pS.GIF",
				"profile_url": "https://giphy.com/abjahanbin/",
				"username": "abjahanbin",
				"display_name": "abj.world",
				"description": "games & toons",
				"instagram_url": "https://instagram.com/abj.world",
				"website_url": "https://abj.world/",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPTAwTUpTbXN6R3oxcEIwZ3NlYSZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPTAwTUpTbXN6R3oxcEIwZ3NlYSZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPTAwTUpTbXN6R3oxcEIwZ3NlYSZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPTAwTUpTbXN6R3oxcEIwZ3NlYSZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "CjrB9Mo0o4DNC",
			"url": "https://giphy.com/stickers/love-cat-CjrB9Mo0o4DNC",
			"slug": "love-cat-CjrB9Mo0o4DNC",
			"bitly_gif_url": "http://gph.is/1syNA4K",
			"bitly_url": "http://gph.is/1syNA4K",
			"embed_url": "https://giphy.com/embed/CjrB9Mo0o4DNC",
			"username": "",
			"source": "",
			"title": "Happy I Love You So Much It Hurts Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2016-06-10 16:27:34",
			"trending_datetime": "2018-03-30 15:00:02",
			"images": {
				"original": {
					"height": "90",
					"width": "90",
					"size": "3431",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/giphy.gif",
					"mp4_size": "36636",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/giphy.mp4",
					"webp_size": "9900",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/giphy.webp",
					"frames": "8",
					"hash": "0a8bacb017340f5699f9912a9b30adee"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "12378",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/200.gif",
					"mp4_size": "14854",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/200.mp4",
					"webp_size": "51288",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "9535",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/200_d.gif",
					"webp_size": "17754",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "5169",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/100.gif",
					"mp4_size": "8680",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/100.mp4",
					"webp_size": "20498",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "12378",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/200w.gif",
					"mp4_size": "14854",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/200w.mp4",
					"webp_size": "51288",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "9535",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/200w_d.gif",
					"webp_size": "17754",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "5169",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/100w.gif",
					"mp4_size": "8680",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/100w.mp4",
					"webp_size": "20498",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/CjrB9Mo0o4DNC/100w.webp"
				}
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUNqckI5TW8wbzRETkMmY3Q9cw",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUNqckI5TW8wbzRETkMmY3Q9cw&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUNqckI5TW8wbzRETkMmY3Q9cw&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPUNqckI5TW8wbzRETkMmY3Q9cw&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": true
		},
		{
			"type": "sticker",
			"id": "T8yNFdUIRs2Hu",
			"url": "https://giphy.com/stickers/banana-scale-T8yNFdUIRs2Hu",
			"slug": "banana-scale-T8yNFdUIRs2Hu",
			"bitly_gif_url": "http://gph.is/1mEmfZA",
			"bitly_url": "http://gph.is/1mEmfZA",
			"embed_url": "https://giphy.com/embed/T8yNFdUIRs2Hu",
			"username": "",
			"source": "",
			"title": "Happy Peanut Butter Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2014-04-23 16:52:10",
			"trending_datetime": "1970-01-01 00:00:00",
			"images": {
				"original": {
					"height": "140",
					"width": "140",
					"size": "17361",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/giphy.gif",
					"mp4_size": "14782",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/giphy.mp4",
					"webp_size": "16970",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/giphy.webp",
					"frames": "8",
					"hash": "f958feb46e5e62e0868d5dda5a889673"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "30420",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/200.gif",
					"mp4_size": "20595",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/200.mp4",
					"webp_size": "22644",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "21614",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/200_d.gif",
					"webp_size": "19056",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "12141",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/100.gif",
					"mp4_size": "10945",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/100.mp4",
					"webp_size": "12494",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "30420",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/200w.gif",
					"mp4_size": "20595",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/200w.mp4",
					"webp_size": "19998",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "21614",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/200w_d.gif",
					"webp_size": "19056",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "12141",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/100w.gif",
					"mp4_size": "10945",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/100w.mp4",
					"webp_size": "12494",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlMDQydTNxb3VhM3g4b2djZmU0YXBnZm9wNjM3cTk5cjFtaGY1bjZicSZlcD12MV9zdGlja2Vyc19zZWFyY2gmY3Q9cw/T8yNFdUIRs2Hu/100w.webp"
				}
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVQ4eU5GZFVJUnMySHUmY3Q9cw",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVQ4eU5GZFVJUnMySHUmY3Q9cw&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVQ4eU5GZFVJUnMySHUmY3Q9cw&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfU0VBUkNIJmNpZD0yODIxZmE0ZTA0MnUzcW91YTN4OG9nY2ZlNGFwZ2ZvcDYzN3E5OXIxbWhmNW42YnEmZ2lmX2lkPVQ4eU5GZFVJUnMySHUmY3Q9cw&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		}
	],
	"meta": {
		"status": 200,
		"msg": "OK",
		"response_id": "042u3qoua3x8ogcfe4apgfop637q99r1mhf5n6bq"
	},
	"pagination": {
		"total_count": 500,
		"count": 25,
		"offset": 0
	}
}*/