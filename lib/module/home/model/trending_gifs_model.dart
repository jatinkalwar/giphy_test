class TrendingGifsModel {
    TrendingGifsModel({
         this.data = const [],
         this.meta,
         this.pagination,
    });

    final List<Datum> data;
    final Meta? meta;
    final Pagination? pagination;

    TrendingGifsModel copyWith({
        List<Datum>? data,
        Meta? meta,
        Pagination? pagination,
    }) {
        return TrendingGifsModel(
            data: data ?? this.data,
            meta: meta ?? this.meta,
            pagination: pagination ?? this.pagination,
        );
    }

    factory TrendingGifsModel.fromJson(Map<String, dynamic> json){ 
        return TrendingGifsModel(
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
			"id": "4bwIvUQikzg4Z4S0Z6",
			"url": "https://giphy.com/stickers/transparent-4bwIvUQikzg4Z4S0Z6",
			"slug": "transparent-4bwIvUQikzg4Z4S0Z6",
			"bitly_gif_url": "https://gph.is/st/E1roeoK",
			"bitly_url": "https://gph.is/st/E1roeoK",
			"embed_url": "https://giphy.com/embed/4bwIvUQikzg4Z4S0Z6",
			"username": "itsannahurley",
			"source": "",
			"title": "Good Morning Singing Sticker by Anna Hurley",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-04-22 22:45:44",
			"trending_datetime": "2021-04-25 10:17:07",
			"images": {
				"original": {
					"height": "363",
					"width": "480",
					"size": "48542",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/giphy.gif",
					"mp4_size": "46145",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/giphy.mp4",
					"webp_size": "43710",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/giphy.webp",
					"frames": "4",
					"hash": "c579463688b1f4303864b836fd0f3632"
				},
				"fixed_height": {
					"height": "200",
					"width": "264",
					"size": "18270",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/200.gif",
					"mp4_size": "21287",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/200.mp4",
					"webp_size": "19890",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "264",
					"size": "41515",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/200_d.gif",
					"webp_size": "19842",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "132",
					"size": "8136",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/100.gif",
					"mp4_size": "9868",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/100.mp4",
					"webp_size": "7578",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/100.webp"
				},
				"fixed_width": {
					"height": "151",
					"width": "200",
					"size": "12723",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/200w.gif",
					"mp4_size": "14671",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/200w.mp4",
					"webp_size": "12106",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "151",
					"width": "200",
					"size": "26249",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/200w_d.gif",
					"webp_size": "13988",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "76",
					"width": "100",
					"size": "5978",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/100w.gif",
					"mp4_size": "7159",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/100w.mp4",
					"webp_size": "5560",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/4bwIvUQikzg4Z4S0Z6/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/itsannahurley/VvcjdEzmgmeT.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/itsannahurley/",
				"username": "itsannahurley",
				"display_name": "Anna Hurley",
				"description": "I'm an illustrator who loves bright colors and can usually be found playing board games, riding my bike, and eating snacks. I live in Oakland, California, and am currently working as a full-time freelancer.",
				"instagram_url": "https://instagram.com/itsAnnaHurley",
				"website_url": "http://anna-hurley.com",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9NGJ3SXZVUWlremc0WjRTMFo2JmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9NGJ3SXZVUWlremc0WjRTMFo2JmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9NGJ3SXZVUWlremc0WjRTMFo2JmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9NGJ3SXZVUWlremc0WjRTMFo2JmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "kF5g7JfRk9XoMdZoWb",
			"url": "https://giphy.com/stickers/normanandpiper-happy-birthday-song-to-you-kF5g7JfRk9XoMdZoWb",
			"slug": "normanandpiper-happy-birthday-song-to-you-kF5g7JfRk9XoMdZoWb",
			"bitly_gif_url": "https://gph.is/st/Y6QA6QM",
			"bitly_url": "https://gph.is/st/Y6QA6QM",
			"embed_url": "https://giphy.com/embed/kF5g7JfRk9XoMdZoWb",
			"username": "normanandpiper",
			"source": "",
			"title": "Happy Birthday Song Sticker by normanandpiper",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2020-01-13 15:21:19",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "160328",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/giphy.gif",
					"mp4_size": "124369",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/giphy.mp4",
					"webp_size": "132950",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/giphy.webp",
					"frames": "5",
					"hash": "0cd4b76828a2c70593ca0f62adc19365"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "46608",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/200.gif",
					"mp4_size": "48220",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/200.mp4",
					"webp_size": "52710",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "57319",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/200_d.gif",
					"webp_size": "52492",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "21264",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/100.gif",
					"mp4_size": "19409",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/100.mp4",
					"webp_size": "18342",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "46608",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/200w.gif",
					"mp4_size": "48220",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/200w.mp4",
					"webp_size": "47086",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "57319",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/200w_d.gif",
					"webp_size": "52492",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "21264",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/100w.gif",
					"mp4_size": "19409",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/100w.mp4",
					"webp_size": "18342",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kF5g7JfRk9XoMdZoWb/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/normanandpiper/NbUxd13IyGRm.gif",
				"banner_image": "https://media2.giphy.com/headers/normanandpiper/zNzyLI9cSdDo.jpg",
				"banner_url": "https://media2.giphy.com/headers/normanandpiper/zNzyLI9cSdDo.jpg",
				"profile_url": "https://giphy.com/normanandpiper/",
				"username": "normanandpiper",
				"display_name": "normanandpiper",
				"description": "Living it up doggystyle!",
				"instagram_url": "https://instagram.com/norman_and_piper",
				"website_url": "http://www.normanandpiper.com",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9a0Y1ZzdKZlJrOVhvTWRab1diJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9a0Y1ZzdKZlJrOVhvTWRab1diJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9a0Y1ZzdKZlJrOVhvTWRab1diJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9a0Y1ZzdKZlJrOVhvTWRab1diJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "Sticker gif. Text, 'Happy birthday to you,' is written in Impact font and glows rainbow colors. Music notes are on the top and bottom of the text, which sits in the middle.",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "JobLVzZdipy8jaS2Oz",
			"url": "https://giphy.com/stickers/dance-dancing-groovy-JobLVzZdipy8jaS2Oz",
			"slug": "dance-dancing-groovy-JobLVzZdipy8jaS2Oz",
			"bitly_gif_url": "https://gph.is/st/E3ZwzWm",
			"bitly_url": "https://gph.is/st/E3ZwzWm",
			"embed_url": "https://giphy.com/embed/JobLVzZdipy8jaS2Oz",
			"username": "sahlooter",
			"source": "",
			"title": "Dance Dancing Sticker by sahlooter",
			"rating": "g",
			"content_url": "https://www.instagram.com/sahlooter/",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2020-01-19 21:10:57",
			"trending_datetime": "2020-05-27 10:45:06",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "1663787",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/giphy.gif",
					"mp4_size": "302754",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/giphy.mp4",
					"webp_size": "561568",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/giphy.webp",
					"frames": "96",
					"hash": "28fdb64e751237ec28017c833c5a0dda"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "437074",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/200.gif",
					"mp4_size": "124742",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/200.mp4",
					"webp_size": "201556",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "21854",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/200_d.gif",
					"webp_size": "14960",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "220650",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/100.gif",
					"mp4_size": "59460",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/100.mp4",
					"webp_size": "84372",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "437074",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/200w.gif",
					"mp4_size": "124742",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/200w.mp4",
					"webp_size": "171220",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "21854",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/200w_d.gif",
					"webp_size": "14960",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "220650",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/100w.gif",
					"mp4_size": "59460",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/100w.mp4",
					"webp_size": "84372",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/JobLVzZdipy8jaS2Oz/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/sahlooter/DH8MbPLAqfFz.gif",
				"banner_image": "https://media2.giphy.com/headers/sahlooter/UOItbOAUsUJl.gif",
				"banner_url": "https://media2.giphy.com/headers/sahlooter/UOItbOAUsUJl.gif",
				"profile_url": "https://giphy.com/sahlooter/",
				"username": "sahlooter",
				"display_name": "sahlooter",
				"description": "Groovy animator currently working and living in Brooklyn, NY.",
				"instagram_url": "https://instagram.com/sahlooter",
				"website_url": "https://www.instagram.com/sahlooter/",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Sm9iTFZ6WmRpcHk4amFTMk96JmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Sm9iTFZ6WmRpcHk4amFTMk96JmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Sm9iTFZ6WmRpcHk4amFTMk96JmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Sm9iTFZ6WmRpcHk4amFTMk96JmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "V66KVunDBGr2BldaOW",
			"url": "https://giphy.com/stickers/Theil-Verlag-suna-theil-ballons-V66KVunDBGr2BldaOW",
			"slug": "Theil-Verlag-suna-theil-ballons-V66KVunDBGr2BldaOW",
			"bitly_gif_url": "https://gph.is/st/m0dlANz",
			"bitly_url": "https://gph.is/st/m0dlANz",
			"embed_url": "https://giphy.com/embed/V66KVunDBGr2BldaOW",
			"username": "Theil_Verlag",
			"source": "",
			"title": "Happy Birthday Sticker by Theil_Verlag",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-09-28 06:49:58",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "190",
					"size": "78309",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/giphy.gif",
					"mp4_size": "28442",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/giphy.mp4",
					"webp_size": "46180",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/giphy.webp",
					"frames": "4",
					"hash": "9229c33cb7b7b4de345f61ccd295e7fe"
				},
				"fixed_height": {
					"height": "200",
					"width": "79",
					"size": "18912",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/200.gif",
					"mp4_size": "8879",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/200.mp4",
					"webp_size": "12564",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "79",
					"size": "27251",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/200_d.gif",
					"webp_size": "12278",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "40",
					"size": "8426",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/100.gif",
					"mp4_size": "4329",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/100.mp4",
					"webp_size": "4228",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/100.webp"
				},
				"fixed_width": {
					"height": "505",
					"width": "200",
					"size": "76321",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/200w.gif",
					"mp4_size": "39319",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/200w.mp4",
					"webp_size": "41484",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "505",
					"width": "200",
					"size": "123477",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/200w_d.gif",
					"webp_size": "48502",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "253",
					"width": "100",
					"size": "27931",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/100w.gif",
					"mp4_size": "12790",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/100w.mp4",
					"webp_size": "14928",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/V66KVunDBGr2BldaOW/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/Theil_Verlag/dKP8M5YMQvwF.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/Theil_Verlag/",
				"username": "Theil_Verlag",
				"display_name": "Theil_Verlag",
				"description": "Wir sind ein Buchverlag mit besonderen Illustrationen und möchten eigene Sticker nutzen können, sowie anderen zur Verfügung stellen.",
				"instagram_url": "https://instagram.com/theil_verlag",
				"website_url": "http://www.theil-kbv.de",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9VjY2S1Z1bkRCR3IyQmxkYU9XJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9VjY2S1Z1bkRCR3IyQmxkYU9XJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9VjY2S1Z1bkRCR3IyQmxkYU9XJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9VjY2S1Z1bkRCR3IyQmxkYU9XJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "Sticker gif. Group of balloons wave in the air. They're all shades of pink, purple, magenta, and light pink, and there's a light purple star balloon and bright magenta heart balloon.",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "Mnxju2KzCSAA7a20wa",
			"url": "https://giphy.com/stickers/snow-hearts-miss-you-Mnxju2KzCSAA7a20wa",
			"slug": "snow-hearts-miss-you-Mnxju2KzCSAA7a20wa",
			"bitly_gif_url": "https://gph.is/st/m7gvoj1",
			"bitly_url": "https://gph.is/st/m7gvoj1",
			"embed_url": "https://giphy.com/embed/Mnxju2KzCSAA7a20wa",
			"username": "nataliaberger",
			"source": "",
			"title": "I Love You Hearts Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2023-01-15 19:30:11",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "2852917",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/giphy.gif",
					"mp4_size": "1189107",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/giphy.mp4",
					"webp_size": "1358588",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/giphy.webp",
					"frames": "30",
					"hash": "29366cb0ab3d6bde25aaac58923caf2d"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "671185",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/200.gif",
					"mp4_size": "257757",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/200.mp4",
					"webp_size": "788734",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "87159",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/200_d.gif",
					"webp_size": "88226",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "258123",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/100.gif",
					"mp4_size": "91562",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/100.mp4",
					"webp_size": "271858",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "671185",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/200w.gif",
					"mp4_size": "257757",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/200w.mp4",
					"webp_size": "788734",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "87159",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/200w_d.gif",
					"webp_size": "88226",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "258123",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/100w.gif",
					"mp4_size": "49390",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/100w.mp4",
					"webp_size": "271858",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Mnxju2KzCSAA7a20wa/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/nataliaberger/1HIqCPTK3MlQ.gif",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/channel/nataliaberger/",
				"username": "nataliaberger",
				"display_name": "natalia berger",
				"description": "Peeling good.",
				"instagram_url": "",
				"website_url": "https://natalia-berger.framer.website/",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9TW54anUyS3pDU0FBN2EyMHdhJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9TW54anUyS3pDU0FBN2EyMHdhJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9TW54anUyS3pDU0FBN2EyMHdhJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9TW54anUyS3pDU0FBN2EyMHdhJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "weQG1zCbffpew",
			"url": "https://giphy.com/stickers/adult-swim-weQG1zCbffpew",
			"slug": "adult-swim-weQG1zCbffpew",
			"bitly_gif_url": "http://gph.is/2caYubW",
			"bitly_url": "http://gph.is/2caYubW",
			"embed_url": "https://giphy.com/embed/weQG1zCbffpew",
			"username": "stickers",
			"source": "",
			"title": "Cat 3D Sticker by Stickers",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2016-09-06 20:25:36",
			"trending_datetime": "2017-03-08 21:31:54",
			"images": {
				"original": {
					"height": "324",
					"width": "250",
					"size": "285529",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/giphy.gif",
					"mp4_size": "51082",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/giphy.mp4",
					"webp_size": "150668",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/giphy.webp",
					"frames": "20",
					"hash": "668aba6cb361bae47aae7249d0249e25"
				},
				"fixed_height": {
					"height": "200",
					"width": "154",
					"size": "112306",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/200.gif",
					"mp4_size": "39415",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/200.mp4",
					"webp_size": "81302",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "154",
					"size": "32397",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/200_d.gif",
					"webp_size": "26912",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "77",
					"size": "42079",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/100.gif",
					"mp4_size": "16902",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/100.mp4",
					"webp_size": "30156",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/100.webp"
				},
				"fixed_width": {
					"height": "259",
					"width": "200",
					"size": "173496",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/200w.gif",
					"mp4_size": "54622",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/200w.mp4",
					"webp_size": "96216",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "259",
					"width": "200",
					"size": "49895",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/200w_d.gif",
					"webp_size": "39218",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "130",
					"width": "100",
					"size": "61911",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/100w.gif",
					"mp4_size": "23203",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/100w.mp4",
					"webp_size": "41392",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/weQG1zCbffpew/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/stickers/Kk9DxBFnkaxi.gif",
				"banner_image": "https://media2.giphy.com/channel_assets/stickers/JoA1PiFrSSRC.gif",
				"banner_url": "https://media2.giphy.com/channel_assets/stickers/JoA1PiFrSSRC.gif",
				"profile_url": "https://giphy.com/stickers/",
				"username": "stickers",
				"display_name": "Stickers",
				"description": "Send some stickers to all your friends, and frenemies! They won't believe their eyes!",
				"instagram_url": "",
				"website_url": "",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9d2VRRzF6Q2JmZnBldyZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9d2VRRzF6Q2JmZnBldyZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9d2VRRzF6Q2JmZnBldyZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9d2VRRzF6Q2JmZnBldyZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "Sticker gif. Partially-rendered 3D baby riding bareback atop a photowrap 3D cat, arms wide as the cat gallops.",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "tFa8YGgNRhIwrU9alI",
			"url": "https://giphy.com/stickers/Croky-its-friday-croky-chips-tFa8YGgNRhIwrU9alI",
			"slug": "Croky-its-friday-croky-chips-tFa8YGgNRhIwrU9alI",
			"bitly_gif_url": "https://gph.is/st/MlrJAyy",
			"bitly_url": "https://gph.is/st/MlrJAyy",
			"embed_url": "https://giphy.com/embed/tFa8YGgNRhIwrU9alI",
			"username": "Croky",
			"source": "",
			"title": "Its Friday Sticker by Croky",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-11-19 13:12:25",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "235433",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/giphy.gif",
					"mp4_size": "120647",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/giphy.mp4",
					"webp_size": "150658",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/giphy.webp",
					"frames": "31",
					"hash": "29e0b926c2d468d5d4b8ed0457d14a7f"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "117632",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/200.gif",
					"mp4_size": "38018",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/200.mp4",
					"webp_size": "69402",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "18777",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/200_d.gif",
					"webp_size": "27624",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "51774",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/100.gif",
					"mp4_size": "15221",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/100.mp4",
					"webp_size": "29564",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "117632",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/200w.gif",
					"mp4_size": "38018",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/200w.mp4",
					"webp_size": "69402",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "18777",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/200w_d.gif",
					"webp_size": "27624",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "51774",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/100w.gif",
					"mp4_size": "15221",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/100w.mp4",
					"webp_size": "29564",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/tFa8YGgNRhIwrU9alI/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/Croky/Ju7Idzokuq6i.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/Croky/",
				"username": "Croky",
				"display_name": "Croky",
				"description": "Croky\r\nSMAAKT NAAR MEER\r\n-\r\nJE CRAQUE\r\n#crokychips",
				"instagram_url": "https://instagram.com/croky.chips",
				"website_url": "http://www.croky.be",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9dEZhOFlHZ05SaEl3clU5YWxJJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9dEZhOFlHZ05SaEl3clU5YWxJJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9dEZhOFlHZ05SaEl3clU5YWxJJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9dEZhOFlHZ05SaEl3clU5YWxJJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "rvbmBA94YxWwSIY9oT",
			"url": "https://giphy.com/stickers/loop-fire-flame-rvbmBA94YxWwSIY9oT",
			"slug": "loop-fire-flame-rvbmBA94YxWwSIY9oT",
			"bitly_gif_url": "https://gph.is/st/Y69jL0z",
			"bitly_url": "https://gph.is/st/Y69jL0z",
			"embed_url": "https://giphy.com/embed/rvbmBA94YxWwSIY9oT",
			"username": "frederieke",
			"source": "",
			"title": "Animation Loop Sticker by Frédérique",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2024-10-09 12:09:21",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "213",
					"size": "561445",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/giphy.gif",
					"mp4_size": "497872",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/giphy.mp4",
					"webp_size": "333718",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/giphy.webp",
					"frames": "41",
					"hash": "8213c5fdc6cafe32a8913abe1ccb1f59"
				},
				"fixed_height": {
					"height": "200",
					"width": "89",
					"size": "148405",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/200.gif",
					"mp4_size": "88857",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/200.mp4",
					"webp_size": "86136",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "89",
					"size": "16832",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/200_d.gif",
					"webp_size": "12600",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "45",
					"size": "72518",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/100.gif",
					"mp4_size": "30502",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/100.mp4",
					"webp_size": "30834",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/100.webp"
				},
				"fixed_width": {
					"height": "451",
					"width": "200",
					"size": "478808",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/200w.gif",
					"mp4_size": "429416",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/200w.mp4",
					"webp_size": "265728",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "451",
					"width": "200",
					"size": "61673",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/200w_d.gif",
					"webp_size": "46364",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "226",
					"width": "100",
					"size": "187987",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/100w.gif",
					"mp4_size": "132510",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/100w.mp4",
					"webp_size": "91936",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/rvbmBA94YxWwSIY9oT/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/frederieke/Cb0dwsXIkzO4.jpg",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/frederieke/",
				"username": "frederieke",
				"display_name": "Frédérique",
				"description": "",
				"instagram_url": "https://instagram.com/Frederique.patiences",
				"website_url": "https://www.instagram.com/frederique.patiences",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9cnZibUJBOTRZeFd3U0lZOW9UJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9cnZibUJBOTRZeFd3U0lZOW9UJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9cnZibUJBOTRZeFd3U0lZOW9UJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9cnZibUJBOTRZeFd3U0lZOW9UJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "625e204lmQvLozi7ND",
			"url": "https://giphy.com/stickers/dance-friday-fri-yay-625e204lmQvLozi7ND",
			"slug": "dance-friday-fri-yay-625e204lmQvLozi7ND",
			"bitly_gif_url": "https://gph.is/st/m0dooQN",
			"bitly_url": "https://gph.is/st/m0dooQN",
			"embed_url": "https://giphy.com/embed/625e204lmQvLozi7ND",
			"username": "Audjobb",
			"source": "",
			"title": "Lets Go Dancing Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-06-03 17:48:15",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "329",
					"size": "1048222",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/giphy.gif",
					"mp4_size": "384460",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/giphy.mp4",
					"webp_size": "1041242",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/giphy.webp",
					"frames": "100",
					"hash": "cfab0417c7f0478e87ce210ea96cb33c"
				},
				"fixed_height": {
					"height": "200",
					"width": "137",
					"size": "376472",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/200.gif",
					"mp4_size": "160931",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/200.mp4",
					"webp_size": "407324",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "137",
					"size": "18535",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/200_d.gif",
					"webp_size": "24748",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "69",
					"size": "173178",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/100.gif",
					"mp4_size": "78589",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/100.mp4",
					"webp_size": "156882",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/100.webp"
				},
				"fixed_width": {
					"height": "292",
					"width": "200",
					"size": "561785",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/200w.gif",
					"mp4_size": "234753",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/200w.mp4",
					"webp_size": "543410",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "292",
					"width": "200",
					"size": "29275",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/200w_d.gif",
					"webp_size": "37198",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "146",
					"width": "100",
					"size": "286074",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/100w.gif",
					"mp4_size": "117715",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/100w.mp4",
					"webp_size": "244056",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/625e204lmQvLozi7ND/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/Audjobb/bvquyJrLR5Yq.gif",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/channel/Audjobb/",
				"username": "Audjobb",
				"display_name": "loco_ochos",
				"description": "Seattle based illustrator and animator.",
				"instagram_url": "https://instagram.com/run_dos_run",
				"website_url": "http://ericianroche.com/projects",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9NjI1ZTIwNGxtUXZMb3ppN05EJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9NjI1ZTIwNGxtUXZMb3ppN05EJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9NjI1ZTIwNGxtUXZMb3ppN05EJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9NjI1ZTIwNGxtUXZMb3ppN05EJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "Sticker gif. Cartoon person wearing a purple shirt and light blue pants dances in celebration over a transparent background. Text, “Fri Yay.”",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "YiHfUCv6h3GLKkqyKw",
			"url": "https://giphy.com/stickers/CoopPrix-transparent-YiHfUCv6h3GLKkqyKw",
			"slug": "CoopPrix-transparent-YiHfUCv6h3GLKkqyKw",
			"bitly_gif_url": "https://gph.is/st/Y9rDPvw",
			"bitly_url": "https://gph.is/st/Y9rDPvw",
			"embed_url": "https://giphy.com/embed/YiHfUCv6h3GLKkqyKw",
			"username": "CoopPrix",
			"source": "",
			"title": "Happy We Did It Sticker by Coop Prix - fort gjort!",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-08-27 13:12:26",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "1443829",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/giphy.gif",
					"mp4_size": "370955",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/giphy.mp4",
					"webp_size": "624176",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/giphy.webp",
					"frames": "68",
					"hash": "55a6a150b56a021799a1cee39f61d806"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "353824",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/200.gif",
					"mp4_size": "127108",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/200.mp4",
					"webp_size": "204782",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "25641",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/200_d.gif",
					"webp_size": "22330",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "170720",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/100.gif",
					"mp4_size": "52330",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/100.mp4",
					"webp_size": "78944",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "353824",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/200w.gif",
					"mp4_size": "127108",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/200w.mp4",
					"webp_size": "172484",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "25641",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/200w_d.gif",
					"webp_size": "22330",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "170720",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/100w.gif",
					"mp4_size": "52330",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/100w.mp4",
					"webp_size": "78944",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/YiHfUCv6h3GLKkqyKw/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/CoopPrix/v9SJ2u3AHqAj.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/CoopPrix/",
				"username": "CoopPrix",
				"display_name": "Coop Prix - fort gjort!",
				"description": "Coop Prix - fort gjort!",
				"instagram_url": "https://instagram.com/coopprix.no",
				"website_url": "http://coopprix.no",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9WWlIZlVDdjZoM0dMS2txeUt3JmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9WWlIZlVDdjZoM0dMS2txeUt3JmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9WWlIZlVDdjZoM0dMS2txeUt3JmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9WWlIZlVDdjZoM0dMS2txeUt3JmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "Sticker gif. Furry brown sloth dances victoriously over a transparent background.",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "qhNf8bCnDTnbsPLeHm",
			"url": "https://giphy.com/stickers/jerseydemic-typography-greetings-demic-qhNf8bCnDTnbsPLeHm",
			"slug": "jerseydemic-typography-greetings-demic-qhNf8bCnDTnbsPLeHm",
			"bitly_gif_url": "https://gph.is/st/ER4jep3",
			"bitly_url": "https://gph.is/st/ER4jep3",
			"embed_url": "https://giphy.com/embed/qhNf8bCnDTnbsPLeHm",
			"username": "jerseydemic",
			"source": "",
			"title": "Greeting Good Morning Sticker by Demic",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-12-04 04:14:24",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "50484",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/giphy.gif",
					"mp4_size": "55517",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/giphy.mp4",
					"webp_size": "66390",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/giphy.webp",
					"frames": "4",
					"hash": "56fa65b3603a0beba0e9e4edaa08b75e"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "17217",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/200.gif",
					"mp4_size": "22263",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/200.mp4",
					"webp_size": "21590",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "23798",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/200_d.gif",
					"webp_size": "21452",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "8363",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/100.gif",
					"mp4_size": "9937",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/100.mp4",
					"webp_size": "7264",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "17217",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/200w.gif",
					"mp4_size": "22263",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/200w.mp4",
					"webp_size": "18806",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "23798",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/200w_d.gif",
					"webp_size": "21452",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "8363",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/100w.gif",
					"mp4_size": "9937",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/100w.mp4",
					"webp_size": "7264",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qhNf8bCnDTnbsPLeHm/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/jerseydemic/tdJP9Q4QOY4x.jpg",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/jerseydemic/",
				"username": "jerseydemic",
				"display_name": "Demic",
				"description": "",
				"instagram_url": "https://instagram.com/kingdemic",
				"website_url": "https://twitter.com/kingdemic",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9cWhOZjhiQ25EVG5ic1BMZUhtJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9cWhOZjhiQ25EVG5ic1BMZUhtJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9cWhOZjhiQ25EVG5ic1BMZUhtJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9cWhOZjhiQ25EVG5ic1BMZUhtJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "LLOVkPmlsSj5e",
			"url": "https://giphy.com/stickers/dani-LLOVkPmlsSj5e",
			"slug": "dani-LLOVkPmlsSj5e",
			"bitly_gif_url": "http://gph.is/2cUJocK",
			"bitly_url": "http://gph.is/2cUJocK",
			"embed_url": "https://giphy.com/embed/LLOVkPmlsSj5e",
			"username": "",
			"source": "",
			"title": "happy birthday dani Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2016-09-18 09:55:36",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "312",
					"width": "293",
					"size": "144710",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/giphy.gif",
					"mp4_size": "85101",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/giphy.mp4",
					"webp_size": "76730",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/giphy.webp",
					"frames": "3",
					"hash": "2dc211c1dced4c03d3252b9becf6da0c"
				},
				"fixed_height": {
					"height": "200",
					"width": "188",
					"size": "50863",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/200.gif",
					"mp4_size": "41192",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/200.mp4",
					"webp_size": "35806",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "188",
					"size": "63976",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/200_d.gif",
					"webp_size": "35348",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "94",
					"size": "14262",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/100.gif",
					"mp4_size": "12263",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/100.mp4",
					"webp_size": "9730",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/100.webp"
				},
				"fixed_width": {
					"height": "213",
					"width": "200",
					"size": "57374",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/200w.gif",
					"mp4_size": "44476",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/200w.mp4",
					"webp_size": "33866",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "213",
					"width": "200",
					"size": "73063",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/200w_d.gif",
					"webp_size": "40038",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "107",
					"width": "100",
					"size": "13166",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/100w.gif",
					"mp4_size": "13401",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/100w.mp4",
					"webp_size": "10780",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/LLOVkPmlsSj5e/100w.webp"
				}
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9TExPVmtQbWxzU2o1ZSZjdD1z",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9TExPVmtQbWxzU2o1ZSZjdD1z&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9TExPVmtQbWxzU2o1ZSZjdD1z&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9TExPVmtQbWxzU2o1ZSZjdD1z&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "ekSn4mcq4xmdAb7WqT",
			"url": "https://giphy.com/stickers/COBClicks-dinosaur-dino-trex-ekSn4mcq4xmdAb7WqT",
			"slug": "COBClicks-dinosaur-dino-trex-ekSn4mcq4xmdAb7WqT",
			"bitly_gif_url": "https://gph.is/st/MBXbkPm",
			"bitly_url": "https://gph.is/st/MBXbkPm",
			"embed_url": "https://giphy.com/embed/ekSn4mcq4xmdAb7WqT",
			"username": "COBClicks",
			"source": "",
			"title": "Happy Birthday Dancing Sticker by clicks digital",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2019-12-06 13:41:58",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "295",
					"size": "1021336",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/giphy.gif",
					"mp4_size": "414709",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/giphy.mp4",
					"webp_size": "364456",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/giphy.webp",
					"frames": "25",
					"hash": "32a35b59268bbf91d964763d744c2d44"
				},
				"fixed_height": {
					"height": "200",
					"width": "123",
					"size": "210735",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/200.gif",
					"mp4_size": "48985",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/200.mp4",
					"webp_size": "154000",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "123",
					"size": "34656",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/200_d.gif",
					"webp_size": "26640",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "62",
					"size": "89106",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/100.gif",
					"mp4_size": "16865",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/100.mp4",
					"webp_size": "68500",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/100.webp"
				},
				"fixed_width": {
					"height": "325",
					"width": "200",
					"size": "437488",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/200w.gif",
					"mp4_size": "97361",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/200w.mp4",
					"webp_size": "288728",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "325",
					"width": "200",
					"size": "78249",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/200w_d.gif",
					"webp_size": "56506",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "163",
					"width": "100",
					"size": "161723",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/100w.gif",
					"mp4_size": "34120",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/100w.mp4",
					"webp_size": "118960",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/ekSn4mcq4xmdAb7WqT/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/COBClicks/tgEOWmydx5ft.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/COBClicks/",
				"username": "COBClicks",
				"display_name": "clicks digital",
				"description": "",
				"instagram_url": "https://instagram.com/clicks.de",
				"website_url": "https://www.clicks.de/",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9ZWtTbjRtY3E0eG1kQWI3V3FUJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9ZWtTbjRtY3E0eG1kQWI3V3FUJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9ZWtTbjRtY3E0eG1kQWI3V3FUJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9ZWtTbjRtY3E0eG1kQWI3V3FUJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "sThlS7PKkYKXfZkeDE",
			"url": "https://giphy.com/stickers/transparent-sThlS7PKkYKXfZkeDE",
			"slug": "transparent-sThlS7PKkYKXfZkeDE",
			"bitly_gif_url": "https://gph.is/st/MxP7Rr0",
			"bitly_url": "https://gph.is/st/MxP7Rr0",
			"embed_url": "https://giphy.com/embed/sThlS7PKkYKXfZkeDE",
			"username": "irazhevlakova",
			"source": "",
			"title": "I Love You Sticker by ircha_gram",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-05-12 14:20:04",
			"trending_datetime": "2021-05-12 22:00:04",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "720778",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/giphy.gif",
					"mp4_size": "130914",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/giphy.mp4",
					"webp_size": "508134",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/giphy.webp",
					"frames": "99",
					"hash": "cab1398861256a3901d9636946c46890"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "238573",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/200.gif",
					"mp4_size": "90243",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/200.mp4",
					"webp_size": "271060",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "13805",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/200_d.gif",
					"webp_size": "18986",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "103385",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/100.gif",
					"mp4_size": "46334",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/100.mp4",
					"webp_size": "116670",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "238573",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/200w.gif",
					"mp4_size": "90243",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/200w.mp4",
					"webp_size": "237544",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "13805",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/200w_d.gif",
					"webp_size": "18986",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "103385",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/100w.gif",
					"mp4_size": "46334",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/100w.mp4",
					"webp_size": "116670",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/sThlS7PKkYKXfZkeDE/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/irazhevlakova/Do58rCuGqvoc.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/irazhevlakova/",
				"username": "irazhevlakova",
				"display_name": "ircha_gram",
				"description": "Artist",
				"instagram_url": "https://instagram.com/ircha_gram",
				"website_url": "http://www.instagram.com/ircha_gram/",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9c1RobFM3UEtrWUtYZlprZURFJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9c1RobFM3UEtrWUtYZlprZURFJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9c1RobFM3UEtrWUtYZlprZURFJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9c1RobFM3UEtrWUtYZlprZURFJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "Sticker gif. Pair of white-gloved hands with pointed index fingers draw a big pink heart over a transparent background.",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "cUlgoAxuBzeeSq4TB7",
			"url": "https://giphy.com/stickers/christmas-wwf-romania-cUlgoAxuBzeeSq4TB7",
			"slug": "christmas-wwf-romania-cUlgoAxuBzeeSq4TB7",
			"bitly_gif_url": "https://gph.is/st/ER4jnxb",
			"bitly_url": "https://gph.is/st/ER4jnxb",
			"embed_url": "https://giphy.com/embed/cUlgoAxuBzeeSq4TB7",
			"username": "wwfromania",
			"source": "",
			"title": "Happy Dance Sticker by WWF Romania",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2021-11-27 15:38:11",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "5596050",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/giphy.gif",
					"mp4_size": "965991",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/giphy.mp4",
					"webp_size": "2161656",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/giphy.webp",
					"frames": "284",
					"hash": "f7293eed9492a5da420e95d3dd957166"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "1344883",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/200.gif",
					"mp4_size": "412788",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/200.mp4",
					"webp_size": "714262",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "22986",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/200_d.gif",
					"webp_size": "16064",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "627798",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/100.gif",
					"mp4_size": "157101",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/100.mp4",
					"webp_size": "261252",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "1344883",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/200w.gif",
					"mp4_size": "412788",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/200w.mp4",
					"webp_size": "608766",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "22986",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/200w_d.gif",
					"webp_size": "16064",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "627798",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/100w.gif",
					"mp4_size": "157101",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/100w.mp4",
					"webp_size": "261252",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/cUlgoAxuBzeeSq4TB7/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/wwfromania/3Hkl7TlEFQZI.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/wwfromania/",
				"username": "wwfromania",
				"display_name": "WWF Romania",
				"description": "WWF is an international NGO with the mission to stop the degradation of the planet’s natural environment and to build a future in which people live in harmony with nature, by: conserving the world’s biological diversity, ensuring that the use of renewable natural resources is sustainable and promoting the reduction of pollution and wasteful consumption.",
				"instagram_url": "https://instagram.com/wwf.romania",
				"website_url": "http://wwf.ro/",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Y1VsZ29BeHVCemVlU3E0VEI3JmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Y1VsZ29BeHVCemVlU3E0VEI3JmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Y1VsZ29BeHVCemVlU3E0VEI3JmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Y1VsZ29BeHVCemVlU3E0VEI3JmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "qprl8yk1HUsOU4kgvR",
			"url": "https://giphy.com/stickers/SWAG-transparent-swag-qprl8yk1HUsOU4kgvR",
			"slug": "SWAG-transparent-swag-qprl8yk1HUsOU4kgvR",
			"bitly_gif_url": "https://gph.is/st/EL1a3zq",
			"bitly_url": "https://gph.is/st/EL1a3zq",
			"embed_url": "https://giphy.com/embed/qprl8yk1HUsOU4kgvR",
			"username": "SWAG",
			"source": "",
			"title": "Its Friday Sticker by Sealed With A GIF",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2023-03-30 17:01:21",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "270",
					"width": "480",
					"size": "290937",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/giphy.gif",
					"mp4_size": "121422",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/giphy.mp4",
					"webp_size": "147440",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/giphy.webp",
					"frames": "43",
					"hash": "7f2e8b3213e7efc655f09a64351fa9c6"
				},
				"fixed_height": {
					"height": "200",
					"width": "356",
					"size": "199224",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/200.gif",
					"mp4_size": "77700",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/200.mp4",
					"webp_size": "248224",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "356",
					"size": "23562",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/200_d.gif",
					"webp_size": "15196",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "178",
					"size": "96894",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/100.gif",
					"mp4_size": "28985",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/100.mp4",
					"webp_size": "117684",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/100.webp"
				},
				"fixed_width": {
					"height": "113",
					"width": "200",
					"size": "107927",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/200w.gif",
					"mp4_size": "33989",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/200w.mp4",
					"webp_size": "134706",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "113",
					"width": "200",
					"size": "11416",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/200w_d.gif",
					"webp_size": "7544",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "57",
					"width": "100",
					"size": "45370",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/100w.gif",
					"mp4_size": "14288",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/100w.mp4",
					"webp_size": "64746",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/qprl8yk1HUsOU4kgvR/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/SWAG/gLAPMh60VlRp.gif",
				"banner_image": "https://media2.giphy.com/channel_assets/SWAG/9qhnKB4B34Mh.gif",
				"banner_url": "https://media2.giphy.com/channel_assets/SWAG/9qhnKB4B34Mh.gif",
				"profile_url": "https://giphy.com/SWAG/",
				"username": "SWAG",
				"display_name": "Sealed With A GIF",
				"description": "Repairing this shattered world, one gif at a time.",
				"instagram_url": "https://instagram.com/giphystudios",
				"website_url": "https://www.instagram.com/giphystudios/",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9cXBybDh5azFIVXNPVTRrZ3ZSJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9cXBybDh5azFIVXNPVTRrZ3ZSJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9cXBybDh5azFIVXNPVTRrZ3ZSJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9cXBybDh5azFIVXNPVTRrZ3ZSJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": true
		},
		{
			"type": "sticker",
			"id": "yXhSjI8XO2CmWmsx2P",
			"url": "https://giphy.com/stickers/molangofficialpage-happy-birthday-molang-yXhSjI8XO2CmWmsx2P",
			"slug": "molangofficialpage-happy-birthday-molang-yXhSjI8XO2CmWmsx2P",
			"bitly_gif_url": "https://gph.is/st/meaJAjy",
			"bitly_url": "https://gph.is/st/meaJAjy",
			"embed_url": "https://giphy.com/embed/yXhSjI8XO2CmWmsx2P",
			"username": "molangofficialpage",
			"source": "",
			"title": "Celebrate Happy Birthday Sticker by Molang",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2025-03-27 11:37:25",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "3967931",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/giphy.gif",
					"mp4_size": "2024762",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/giphy.mp4",
					"webp_size": "3383724",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/giphy.webp",
					"frames": "192",
					"hash": "b6720c0f8678b3687a63018df0073550"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "867003",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/200.gif",
					"mp4_size": "449248",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/200.mp4",
					"webp_size": "1022322",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "26982",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/200_d.gif",
					"webp_size": "33654",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "363443",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/100.gif",
					"mp4_size": "202748",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/100.mp4",
					"webp_size": "376558",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "867003",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/200w.gif",
					"mp4_size": "449248",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/200w.mp4",
					"webp_size": "885530",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "26982",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/200w_d.gif",
					"webp_size": "33654",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "363443",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/100w.gif",
					"mp4_size": "202748",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/100w.mp4",
					"webp_size": "376558",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/yXhSjI8XO2CmWmsx2P/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/molangofficialpage/n8klE5vxjnUP.png",
				"banner_image": "https://media2.giphy.com/channel_assets/molangofficialpage/mUC64eFzoOP1.png",
				"banner_url": "https://media2.giphy.com/channel_assets/molangofficialpage/mUC64eFzoOP1.png",
				"profile_url": "https://giphy.com/molangofficialpage/",
				"username": "molangofficialpage",
				"display_name": "Molang",
				"description": "MOLANG official Giphy channel:  happiness is here!\r\n\r\nShop official Molang merchandise online on www.molang.com ✨",
				"instagram_url": "https://instagram.com/molang.official",
				"website_url": "https://bit.ly/MolangWebsite",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9eVhoU2pJOFhPMkNtV21zeDJQJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9eVhoU2pJOFhPMkNtV21zeDJQJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9eVhoU2pJOFhPMkNtV21zeDJQJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9eVhoU2pJOFhPMkNtV21zeDJQJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "dzVFkoJUhohyex2gdU",
			"url": "https://giphy.com/stickers/friday-tgif-lunaisyah-dzVFkoJUhohyex2gdU",
			"slug": "friday-tgif-lunaisyah-dzVFkoJUhohyex2gdU",
			"bitly_gif_url": "https://gph.is/st/E1qjj1E",
			"bitly_url": "https://gph.is/st/E1qjj1E",
			"embed_url": "https://giphy.com/embed/dzVFkoJUhohyex2gdU",
			"username": "lunaisyah",
			"source": "",
			"title": "Finally Friday Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2020-06-05 01:46:07",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "408",
					"width": "480",
					"size": "17180",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/giphy.gif",
					"mp4_size": "54027",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/giphy.mp4",
					"webp_size": "25536",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/giphy.webp",
					"frames": "3",
					"hash": "7b9a4cdc88e3d275dd2a767556551897"
				},
				"fixed_height": {
					"height": "200",
					"width": "235",
					"size": "7277",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/200.gif",
					"mp4_size": "21556",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/200.mp4",
					"webp_size": "59874",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "235",
					"size": "7277",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/200_d.gif",
					"webp_size": "11068",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "118",
					"size": "3100",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/100.gif",
					"mp4_size": "9634",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/100.mp4",
					"webp_size": "24778",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/100.webp"
				},
				"fixed_width": {
					"height": "170",
					"width": "200",
					"size": "5963",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/200w.gif",
					"mp4_size": "17352",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/200w.mp4",
					"webp_size": "49244",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "170",
					"width": "200",
					"size": "5963",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/200w_d.gif",
					"webp_size": "9102",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "85",
					"width": "100",
					"size": "2509",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/100w.gif",
					"mp4_size": "8110",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/100w.mp4",
					"webp_size": "20016",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/dzVFkoJUhohyex2gdU/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/default4.gif",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/channel/lunaisyah/",
				"username": "lunaisyah",
				"display_name": "Luna",
				"description": "Hand letterer, self-taught illustrator. I love all the colors, but somehow pink makes me happier. Purrfect cat makes me happy too☺️",
				"instagram_url": "https://instagram.com/lunaisyah",
				"website_url": "https://instagram.com/lunastudio.jpg",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9ZHpWRmtvSlVob2h5ZXgyZ2RVJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9ZHpWRmtvSlVob2h5ZXgyZ2RVJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9ZHpWRmtvSlVob2h5ZXgyZ2RVJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9ZHpWRmtvSlVob2h5ZXgyZ2RVJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "Sticker gif. Text, 'Thank god, it's Friday!' is written in pink capital letters and the 'O' in God is a heart.",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "GP8Ez9g4XTAoM5nrY1",
			"url": "https://giphy.com/stickers/rvappstudios-good-morning-goodmorning-GP8Ez9g4XTAoM5nrY1",
			"slug": "rvappstudios-good-morning-goodmorning-GP8Ez9g4XTAoM5nrY1",
			"bitly_gif_url": "https://gph.is/st/m045KD9",
			"bitly_url": "https://gph.is/st/m045KD9",
			"embed_url": "https://giphy.com/embed/GP8Ez9g4XTAoM5nrY1",
			"username": "rvappstudios",
			"source": "",
			"title": "Good Morning Love Sticker by Lucas and Friends by RV AppStudios",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2025-03-26 13:52:33",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "946138",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/giphy.gif",
					"mp4_size": "169419",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/giphy.mp4",
					"webp_size": "614478",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/giphy.webp",
					"frames": "25",
					"hash": "916ea79baa27f0bf3160e8e5656e923a"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "229853",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/200.gif",
					"mp4_size": "76456",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/200.mp4",
					"webp_size": "184560",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "52384",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/200_d.gif",
					"webp_size": "46680",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "81298",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/100.gif",
					"mp4_size": "32247",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/100.mp4",
					"webp_size": "62474",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "229853",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/200w.gif",
					"mp4_size": "76456",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/200w.mp4",
					"webp_size": "161602",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "52384",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/200w_d.gif",
					"webp_size": "46680",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "81298",
					"url": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/100w.gif",
					"mp4_size": "32247",
					"mp4": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/100w.mp4",
					"webp_size": "62474",
					"webp": "https://media0.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/GP8Ez9g4XTAoM5nrY1/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/rvappstudios/0ax9ZCLRtVSK.jpg",
				"banner_image": "https://media2.giphy.com/channel_assets/rvappstudios/OO67KPR3kRBn.jpg",
				"banner_url": "https://media2.giphy.com/channel_assets/rvappstudios/OO67KPR3kRBn.jpg",
				"profile_url": "https://giphy.com/rvappstudios/",
				"username": "rvappstudios",
				"display_name": "Lucas and Friends by RV AppStudios",
				"description": "Lucas & Friends By RV AppStudios created free educational apps, nursery rhymes and kids songs on YouTube, children's books, and more. Over 30 million kids use our educational apps every month for free!",
				"instagram_url": "https://instagram.com/rvappstudios",
				"website_url": "http://www.rvappstudios.com",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9R1A4RXo5ZzRYVEFvTTVuclkxJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9R1A4RXo5ZzRYVEFvTTVuclkxJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9R1A4RXo5ZzRYVEFvTTVuclkxJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9R1A4RXo5ZzRYVEFvTTVuclkxJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "5yZzQDu0QQjrI9nimo",
			"url": "https://giphy.com/stickers/betaniamello-mbamartes-betania-mello-5yZzQDu0QQjrI9nimo",
			"slug": "betaniamello-mbamartes-betania-mello-5yZzQDu0QQjrI9nimo",
			"bitly_gif_url": "https://gph.is/st/ENw5JoW",
			"bitly_url": "https://gph.is/st/ENw5JoW",
			"embed_url": "https://giphy.com/embed/5yZzQDu0QQjrI9nimo",
			"username": "BetaniaMello",
			"source": "",
			"title": "Happy Birthday Party Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2024-10-09 17:07:23",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "101450",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/giphy.gif",
					"mp4_size": "73611",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/giphy.mp4",
					"webp_size": "72154",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/giphy.webp",
					"frames": "3",
					"hash": "143090cb07c577ed64fb3d6c276bd16e"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "29704",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/200.gif",
					"mp4_size": "23800",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/200.mp4",
					"webp_size": "27818",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "33565",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/200_d.gif",
					"webp_size": "27662",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "12407",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/100.gif",
					"mp4_size": "10200",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/100.mp4",
					"webp_size": "9350",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "29704",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/200w.gif",
					"mp4_size": "23800",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/200w.mp4",
					"webp_size": "23740",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "33565",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/200w_d.gif",
					"webp_size": "27662",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "12407",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/100w.gif",
					"mp4_size": "10200",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/100w.mp4",
					"webp_size": "9350",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/5yZzQDu0QQjrI9nimo/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/BetaniaMello/3YR7hkTPEw33.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/channel/BetaniaMello/",
				"username": "BetaniaMello",
				"display_name": "Betania Mello",
				"description": "artista de lettering e caligrafia",
				"instagram_url": "https://instagram.com/Instagram/mbam_artes",
				"website_url": "HTTPS://instagram.com/mbam_artes",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9NXlaelFEdTBRUWpySTluaW1vJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9NXlaelFEdTBRUWpySTluaW1vJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9NXlaelFEdTBRUWpySTluaW1vJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9NXlaelFEdTBRUWpySTluaW1vJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "kiQ9BGJi7HGlPyEqxK",
			"url": "https://giphy.com/stickers/designerbagexchange-happy-autumn-designer-bag-exchange-kiQ9BGJi7HGlPyEqxK",
			"slug": "designerbagexchange-happy-autumn-designer-bag-exchange-kiQ9BGJi7HGlPyEqxK",
			"bitly_gif_url": "https://gph.is/st/E1dyenr",
			"bitly_url": "https://gph.is/st/E1dyenr",
			"embed_url": "https://giphy.com/embed/kiQ9BGJi7HGlPyEqxK",
			"username": "designerbagexchange",
			"source": "",
			"title": "Happy Good Morning Sticker by designer Bag Exchange",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2023-09-20 14:53:21",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "122",
					"width": "480",
					"size": "99142",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/giphy.gif",
					"mp4_size": "22854",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/giphy.mp4",
					"webp_size": "51304",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/giphy.webp",
					"frames": "15",
					"hash": "e4332b362b8f736f75588e52d2496cb7"
				},
				"fixed_height": {
					"height": "200",
					"width": "787",
					"size": "211613",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/200.gif",
					"mp4_size": "40862",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/200.mp4",
					"webp_size": "143868",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "787",
					"size": "55668",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/200_d.gif",
					"webp_size": "45830",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "394",
					"size": "94967",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/100.gif",
					"mp4_size": "18119",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/100.mp4",
					"webp_size": "61718",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/100.webp"
				},
				"fixed_width": {
					"height": "51",
					"width": "200",
					"size": "35570",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/200w.gif",
					"mp4_size": "10272",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/200w.mp4",
					"webp_size": "24540",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "51",
					"width": "200",
					"size": "9369",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/200w_d.gif",
					"webp_size": "10382",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "26",
					"width": "100",
					"size": "19903",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/100w.gif",
					"mp4_size": "6357",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/100w.mp4",
					"webp_size": "12988",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/kiQ9BGJi7HGlPyEqxK/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/designerbagexchange/tfHV9DGuY7A4.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/designerbagexchange/",
				"username": "designerbagexchange",
				"display_name": "designer Bag Exchange",
				"description": "",
				"instagram_url": "https://instagram.com/designer_bag_exchange",
				"website_url": "http://www.designerbagexchange.com",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9a2lROUJHSmk3SEdsUHlFcXhLJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9a2lROUJHSmk3SEdsUHlFcXhLJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9a2lROUJHSmk3SEdsUHlFcXhLJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9a2lROUJHSmk3SEdsUHlFcXhLJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "CKwc8DrjB7KMJ3nZ21",
			"url": "https://giphy.com/stickers/minions-minion-rise-of-gru-riseofgru-CKwc8DrjB7KMJ3nZ21",
			"slug": "minions-minion-rise-of-gru-riseofgru-CKwc8DrjB7KMJ3nZ21",
			"bitly_gif_url": "https://gph.is/st/mDLLbyg",
			"bitly_url": "https://gph.is/st/mDLLbyg",
			"embed_url": "https://giphy.com/embed/CKwc8DrjB7KMJ3nZ21",
			"username": "minions",
			"source": "",
			"title": "Disco Happy Birthday Funny Sticker by Minions",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2022-06-23 04:18:21",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "346",
					"width": "480",
					"size": "2292307",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/giphy.gif",
					"mp4_size": "431482",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/giphy.mp4",
					"webp_size": "813090",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/giphy.webp",
					"frames": "38",
					"hash": "cecaa6043cbcae8d156523cd92d72465"
				},
				"fixed_height": {
					"height": "200",
					"width": "277",
					"size": "699980",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/200.gif",
					"mp4_size": "160244",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/200.mp4",
					"webp_size": "455232",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "277",
					"size": "111528",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/200_d.gif",
					"webp_size": "64924",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "139",
					"size": "250746",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/100.gif",
					"mp4_size": "60167",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/100.mp4",
					"webp_size": "182918",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/100.webp"
				},
				"fixed_width": {
					"height": "144",
					"width": "200",
					"size": "501782",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/200w.gif",
					"mp4_size": "97146",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/200w.mp4",
					"webp_size": "294632",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "144",
					"width": "200",
					"size": "67682",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/200w_d.gif",
					"webp_size": "38326",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "72",
					"width": "100",
					"size": "161039",
					"url": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/100w.gif",
					"mp4_size": "36091",
					"mp4": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/100w.mp4",
					"webp_size": "122340",
					"webp": "https://media4.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/CKwc8DrjB7KMJ3nZ21/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/minions/RtHMde0MsOUg.png",
				"banner_image": "https://media2.giphy.com/channel_assets/minions/LZ64URi9mw5m.jpg",
				"banner_url": "https://media2.giphy.com/channel_assets/minions/LZ64URi9mw5m.jpg",
				"profile_url": "https://giphy.com/minions/",
				"username": "minions",
				"display_name": "Minions",
				"description": "causing chaos since the dawn of time",
				"instagram_url": "https://instagram.com/Minions",
				"website_url": "http://www.despicable.me",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Q0t3YzhEcmpCN0tNSjNuWjIxJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Q0t3YzhEcmpCN0tNSjNuWjIxJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Q0t3YzhEcmpCN0tNSjNuWjIxJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Q0t3YzhEcmpCN0tNSjNuWjIxJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "Tw1BsaeVeo9otEk1eo",
			"url": "https://giphy.com/stickers/BearishAF-love-happy-hug-Tw1BsaeVeo9otEk1eo",
			"slug": "BearishAF-love-happy-hug-Tw1BsaeVeo9otEk1eo",
			"bitly_gif_url": "https://gph.is/st/Yk2kLwb",
			"bitly_url": "https://gph.is/st/Yk2kLwb",
			"embed_url": "https://giphy.com/embed/Tw1BsaeVeo9otEk1eo",
			"username": "BearishAF",
			"source": "",
			"title": "Happy I Love You Sticker by BEARISH",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2025-05-24 14:05:01",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "346340",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/giphy.gif",
					"mp4_size": "115514",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/giphy.mp4",
					"webp_size": "256476",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/giphy.webp",
					"frames": "24",
					"hash": "cef4b792d8691f8b489994135a750d64"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "114497",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/200.gif",
					"mp4_size": "50372",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/200.mp4",
					"webp_size": "113898",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "30879",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/200_d.gif",
					"webp_size": "43544",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "47697",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/100.gif",
					"mp4_size": "27008",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/100.mp4",
					"webp_size": "48032",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "114497",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/200w.gif",
					"mp4_size": "50372",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/200w.mp4",
					"webp_size": "100768",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "30879",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/200w_d.gif",
					"webp_size": "43544",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "47697",
					"url": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/100w.gif",
					"mp4_size": "27008",
					"mp4": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/100w.mp4",
					"webp_size": "48032",
					"webp": "https://media1.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/Tw1BsaeVeo9otEk1eo/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/BearishAF/L36Gf7Wqjx4Y.gif",
				"banner_image": "https://media2.giphy.com/channel_assets/BearishAF/KdD14YN7oZRs.gif",
				"banner_url": "https://media2.giphy.com/channel_assets/BearishAF/KdD14YN7oZRs.gif",
				"profile_url": "https://giphy.com/BearishAF/",
				"username": "BearishAF",
				"display_name": "BEARISH",
				"description": "The Internet's Teddy Bear",
				"instagram_url": "",
				"website_url": "https://bearish.af",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9VHcxQnNhZVZlbzlvdEVrMWVvJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9VHcxQnNhZVZlbzlvdEVrMWVvJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9VHcxQnNhZVZlbzlvdEVrMWVvJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9VHcxQnNhZVZlbzlvdEVrMWVvJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "2AKQV4xgT2RlZAetzD",
			"url": "https://giphy.com/stickers/fat-amad-amonsteraday-2AKQV4xgT2RlZAetzD",
			"slug": "fat-amad-amonsteraday-2AKQV4xgT2RlZAetzD",
			"bitly_gif_url": "https://gph.is/st/mgWP1N7",
			"bitly_url": "https://gph.is/st/mgWP1N7",
			"embed_url": "https://giphy.com/embed/2AKQV4xgT2RlZAetzD",
			"username": "amonsteraday",
			"source": "",
			"title": "Happy Cat Sticker",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2024-01-16 14:40:10",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "480",
					"width": "480",
					"size": "669012",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/giphy.gif",
					"mp4_size": "37860",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/giphy.mp4",
					"webp_size": "513314",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/giphy.webp",
					"frames": "47",
					"hash": "335f5a5c31971db0a85d5851df450b7b"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "131332",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/200.gif",
					"mp4_size": "21130",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/200.mp4",
					"webp_size": "212906",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "17406",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/200_d.gif",
					"webp_size": "27984",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "48623",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/100.gif",
					"mp4_size": "10576",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/100.mp4",
					"webp_size": "59002",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "131332",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/200w.gif",
					"mp4_size": "21130",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/200w.mp4",
					"webp_size": "174758",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "17406",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/200w_d.gif",
					"webp_size": "27984",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "48623",
					"url": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/100w.gif",
					"mp4_size": "10576",
					"mp4": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/100w.mp4",
					"webp_size": "59002",
					"webp": "https://media2.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/2AKQV4xgT2RlZAetzD/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/amonsteraday/53OXUlBxVxOo.png",
				"banner_image": "",
				"banner_url": "",
				"profile_url": "https://giphy.com/channel/amonsteraday/",
				"username": "amonsteraday",
				"display_name": "amonsteraday",
				"description": "A monster a day, keeps the doctor away!\r\nmy IG:a_amonster_a_day\r\ncreator based in Taiwan.\r\nlove animation and character design.",
				"instagram_url": "https://instagram.com/a_monster_a_day",
				"website_url": "http://www.amadworks.com",
				"is_verified": false
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9MkFLUVY0eGdUMlJsWkFldHpEJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9MkFLUVY0eGdUMlJsWkFldHpEJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9MkFLUVY0eGdUMlJsWkFldHpEJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9MkFLUVY0eGdUMlJsWkFldHpEJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		},
		{
			"type": "sticker",
			"id": "gg26oXMLUzpMaWxsBL",
			"url": "https://giphy.com/stickers/hello-hi-hey-gg26oXMLUzpMaWxsBL",
			"slug": "hello-hi-hey-gg26oXMLUzpMaWxsBL",
			"bitly_gif_url": "https://gph.is/st/mZQk8vB",
			"bitly_url": "https://gph.is/st/mZQk8vB",
			"embed_url": "https://giphy.com/embed/gg26oXMLUzpMaWxsBL",
			"username": "dinosally",
			"source": "",
			"title": "Good Morning Hello Sticker by DINOSALLY",
			"rating": "g",
			"content_url": "",
			"source_tld": "",
			"source_post_url": "",
			"is_sticker": 1,
			"import_datetime": "2022-04-22 06:36:39",
			"trending_datetime": "0000-00-00 00:00:00",
			"images": {
				"original": {
					"height": "400",
					"width": "400",
					"size": "108819",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/giphy.gif",
					"mp4_size": "67932",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/giphy.mp4",
					"webp_size": "92678",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/giphy.webp",
					"frames": "23",
					"hash": "6de1b8f390633392e534d1c9e31e3126"
				},
				"fixed_height": {
					"height": "200",
					"width": "200",
					"size": "50261",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/200.gif",
					"mp4_size": "29336",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/200.mp4",
					"webp_size": "45802",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/200.webp"
				},
				"fixed_height_downsampled": {
					"height": "200",
					"width": "200",
					"size": "8939",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/200_d.gif",
					"webp_size": "10670",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/200_d.webp"
				},
				"fixed_height_small": {
					"height": "100",
					"width": "100",
					"size": "23268",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/100.gif",
					"mp4_size": "15197",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/100.mp4",
					"webp_size": "19332",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/100.webp"
				},
				"fixed_width": {
					"height": "200",
					"width": "200",
					"size": "50261",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/200w.gif",
					"mp4_size": "29336",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/200w.mp4",
					"webp_size": "39820",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/200w.webp"
				},
				"fixed_width_downsampled": {
					"height": "200",
					"width": "200",
					"size": "8939",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/200w_d.gif",
					"webp_size": "10670",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/200w_d.webp"
				},
				"fixed_width_small": {
					"height": "100",
					"width": "100",
					"size": "23268",
					"url": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/100w.gif",
					"mp4_size": "15197",
					"mp4": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/100w.mp4",
					"webp_size": "19332",
					"webp": "https://media3.giphy.com/media/v1.Y2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZlcD12MV9zdGlja2Vyc190cmVuZGluZyZjdD1z/gg26oXMLUzpMaWxsBL/100w.webp"
				}
			},
			"user": {
				"avatar_url": "https://media2.giphy.com/avatars/dinosally/VghQFA4pCwW5.png",
				"banner_image": "https://media2.giphy.com/channel_assets/dinosally/YgMiiO5UDhCE.gif",
				"banner_url": "https://media2.giphy.com/channel_assets/dinosally/YgMiiO5UDhCE.gif",
				"profile_url": "https://giphy.com/dinosally/",
				"username": "dinosally",
				"display_name": "DINOSALLY",
				"description": "Stomp into adventure with Sally, the pink young dinosaur, and her beastie besties Blambi and Tibo!",
				"instagram_url": "https://instagram.com/dinosally_official",
				"website_url": "http://mostapes.com/dinosally",
				"is_verified": true
			},
			"analytics_response_payload": "e=ZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Z2cyNm9YTUxVenBNYVd4c0JMJmN0PXM",
			"analytics": {
				"onload": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Z2cyNm9YTUxVenBNYVd4c0JMJmN0PXM&action_type=SEEN"
				},
				"onclick": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Z2cyNm9YTUxVenBNYVd4c0JMJmN0PXM&action_type=CLICK"
				},
				"onsent": {
					"url": "https://giphy-analytics.giphy.com/v2/pingback_simple?analytics_response_payload=e%3DZXZlbnRfdHlwZT1HSUZfVFJFTkRJTkcmY2lkPTI4MjFmYTRlem80eHV5am14Nmc3Yjk1MjF0cGR6amVpZnl6bXNnMjU3NzN6bGZkOSZnaWZfaWQ9Z2cyNm9YTUxVenBNYVd4c0JMJmN0PXM&action_type=SENT"
				}
			},
			"alt_text": "",
			"is_low_contrast": false
		}
	],
	"meta": {
		"status": 200,
		"msg": "OK",
		"response_id": "zo4xuyjmx6g7b9521tpdzjeifyzmsg25773zlfd9"
	},
	"pagination": {
		"total_count": 179,
		"count": 25,
		"offset": 0
	}
}*/