import 'package:flutter/cupertino.dart';
import 'package:giphy_project/core/network/api_client.dart';
import 'package:giphy_project/module/home/model/search_gifs_model.dart';
import 'package:giphy_project/module/home/model/trending_gifs_model.dart';

class HomeProvider extends ChangeNotifier {
  String _searchQuery = '';
  int _trendingOffset = 0;
  int _searchOffset = 0;
  bool _isLoadingMore = false;
  bool _hasMoreTrending = true;
  bool _hasMoreSearch = true;

  String get searchQuery => _searchQuery;
  bool get isLoadingMore => _isLoadingMore;
  bool get hasMoreTrending => _hasMoreTrending;
  bool get hasMoreSearch => _hasMoreSearch;

  Future<void> updateSearchQuery(String query, context) async {
    if (_searchQuery != query) {
      _searchQuery = query;
      _searchOffset = 0;
      _hasMoreSearch = true;
      _searchGifsModel = SearchGifsModel();
      notifyListeners();
      if (query.isNotEmpty) {
        await fetchSearchGifs(context);
      }
    }
  }

  TrendingGifsModel _trendingGifsModel = TrendingGifsModel();
  TrendingGifsModel get trendingGifsModel => _trendingGifsModel;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  set isLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  Future<void> fetchTrendingGifs(BuildContext context) async {
    try {
      isLoading = true;
      _trendingOffset = 0;
      final endpoint = '$baseUrl/trending?api_key=$api&limit=20&offset=$_trendingOffset&rating=g&bundle=messaging_non_clips';
      final res = await callGetApi(endpoint, context);
      
      if (res != null) {
        _trendingGifsModel = TrendingGifsModel.fromJson(res);
        _trendingOffset = 25;
        notifyListeners();
      }
    } finally {
      isLoading = false;
    }
  }

  Future<void> loadMoreTrendingGifs(BuildContext context) async {
    if (_isLoadingMore || !_hasMoreTrending) return;
    
    try {
      _isLoadingMore = true;
      notifyListeners();
      
      final endpoint = '$baseUrl/trending?api_key=$api&limit=20&offset=$_trendingOffset&rating=g&bundle=messaging_non_clips';
      final res = await callGetApi(endpoint, context);
      
      if (res != null) {
        final newData = TrendingGifsModel.fromJson(res);
        if (newData.data.isNotEmpty) {
          _trendingGifsModel.data.addAll(newData.data);
          _trendingOffset += 25;
        } else {
          _hasMoreTrending = false;
        }
        notifyListeners();
      }
    } finally {
      _isLoadingMore = false;
    }
  }

  SearchGifsModel _searchGifsModel = SearchGifsModel();
  SearchGifsModel get searchGifsModel => _searchGifsModel;

  Future<void> fetchSearchGifs(BuildContext context) async {
    try {
      isLoading = true;
      _searchOffset = 0;
      final searchEndpoint = '$baseUrl/search?api_key=$api&q=$_searchQuery&limit=20&offset=$_searchOffset&rating=g&lang=en';
      final res = await callGetApi(searchEndpoint, context);
      if (res != null) {
        _searchGifsModel = SearchGifsModel.fromJson(res);
        _searchOffset = 25;
        notifyListeners();
      }
    } finally {
      isLoading = false;
    }
  }

  Future<void> loadMoreSearchGifs(BuildContext context) async {
    if (_isLoadingMore || !_hasMoreSearch || _searchQuery.isEmpty) return;
    
    try {
      _isLoadingMore = true;
      notifyListeners();

      
      final searchEndpoint = '$baseUrl/search?api_key=$api&q=$_searchQuery&limit=20&offset=$_searchOffset&rating=g&lang=en';
      final res = await callGetApi(searchEndpoint, context);
      
      if (res != null) {
        final newData = SearchGifsModel.fromJson(res);
        if (newData.data.isNotEmpty) {
          _searchGifsModel.data.addAll(newData.data);
          _searchOffset += 25;
        } else {
          _hasMoreSearch = false;
        }
        notifyListeners();
      }
    } finally {
      _isLoadingMore = false;
    }
  }
}