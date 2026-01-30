import 'package:flutter/material.dart';
import 'package:giphy_project/core/widgets/custom_search_bar.dart';
import 'package:giphy_project/core/widgets/custom_shimmer.dart';
import 'package:giphy_project/module/home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _trendingScrollController;
  late ScrollController _searchScrollController;

  @override
  void initState() {
    super.initState();
    _trendingScrollController = ScrollController();
    _searchScrollController = ScrollController();
    
    _trendingScrollController.addListener(_onTrendingScroll);
    _searchScrollController.addListener(_onSearchScroll);
    
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Provider.of<HomeProvider>(context, listen: false).fetchTrendingGifs(context);
    });
  }

  @override
  void dispose() {
    _trendingScrollController.dispose();
    _searchScrollController.dispose();
    super.dispose();
  }

  void _onTrendingScroll() {
    if (_trendingScrollController.position.pixels >= _trendingScrollController.position.maxScrollExtent - 200) {
      Provider.of<HomeProvider>(context, listen: false).loadMoreTrendingGifs(context);
    }
  }

  void _onSearchScroll() {
    if (_searchScrollController.position.pixels >= _searchScrollController.position.maxScrollExtent - 200) {
      Provider.of<HomeProvider>(context, listen: false).loadMoreSearchGifs(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<HomeProvider>(
      builder: (context, provider, _) {
        return Scaffold(
          appBar: AppBar(
            title: CustomSearchBar(
              hintText: 'Search GIPHY',
              onChanged: (query) async {
                await provider.updateSearchQuery(query, context);
              },
            ),
          ),
          body: provider.isLoading
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: provider.searchQuery.isEmpty
                      ? _buildTrendingSection(provider)
                      : _buildSearchSection(provider),
                ),
        );
      },
    );
  }

  Widget _buildTrendingSection(HomeProvider provider) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Trending Gifs",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: GridView.builder(
            controller: _trendingScrollController,
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: provider.trendingGifsModel.data.length + (provider.hasMoreTrending ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == provider.trendingGifsModel.data.length) {
                return provider.isLoadingMore
                    ? const Center(child: CircularProgressIndicator())
                    : const SizedBox();
              }
              
              final gif = provider.trendingGifsModel.data[index];
              return Image.network(
                gif.images?.fixedHeight?.url ?? '',
                fit: BoxFit.cover,
               

                height: 200,
                width: 200,
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSearchSection(HomeProvider provider) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Searched Gifs",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Expanded(
          child: GridView.builder(
            controller: _searchScrollController,
            padding: const EdgeInsets.all(8.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 8,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
            ),
            itemCount: provider.searchGifsModel.data.length + (provider.hasMoreSearch ? 1 : 0),
            itemBuilder: (context, index) {
              if (index == provider.searchGifsModel.data.length) {
                return provider.isLoadingMore
                    ? const Center(child: CircularProgressIndicator())
                    : const SizedBox();
              }
              
              final gif = provider.searchGifsModel.data[index];
              return Image.network(
                gif.images?.fixedHeight?.url ?? '',
                fit: BoxFit.cover,
                
                height: 200,
                width: 200,
              );
            },
          ),
        ),
      ],
    );
  }
}
