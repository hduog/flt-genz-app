import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/data/models/Search/SearchModel/SearchModel.dart';
import 'package:flutter_application_1/core/service/search/search_service.dart';
import 'package:flutter_application_1/ui/widget/search_card.dart';

class SearchScreen extends StatefulWidget {
  final bool shouldFocus;
  const SearchScreen({Key? key, this.shouldFocus = false}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  bool _hasSearched = false;
  bool _isLoading = false;

  List<dynamic> _allResults = [];
  List<dynamic> _userResults = [];
  List<dynamic> _postResults = [];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    if (widget.shouldFocus) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _focusNode.requestFocus();
      });
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    _searchController.dispose();
    _focusNode.dispose();

    super.dispose();
  }

  Future<void> search() async {
    final String keyword = _searchController.text.trim();
    if (keyword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nội dung tìm kiếm không được trống')),
      );
      return;
    }

    setState(() {
      _isLoading = true;
      _hasSearched = true;
    });

    try {
      final searchService = SearchService();
      final userResults = await searchService.searchUser(keyword);
      final postResults = await searchService.searchPosts(keyword);

      setState(() {
        _userResults = userResults;
        _postResults = postResults;
        _allResults = [...userResults, ...postResults];
        _allResults.sort((a, b) {
          if (a is SearchUser && b is SearchPosts) {
            return -1;
          } else if (a is SearchPosts && b is SearchUser) {
            return 1;
          }
          return 0;
        });
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Lỗi khi tìm kiếm: $e")),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            IconButton(
              icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.pop(context),
            ),
            Expanded(
              child: TextField(
                controller: _searchController,
                focusNode: _focusNode,
                onSubmitted: (_) => search(),
                decoration: InputDecoration(
                  hintText: "Tìm kiếm...",
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: const EdgeInsets.symmetric(vertical: 3.0),
                ),
              ),
            ),
          ],
        ),
        bottom: _hasSearched
            ? TabBar(
                controller: _tabController,
                tabs: const [
                  Tab(text: "Tất cả"),
                  Tab(text: "Người dùng"),
                  Tab(text: "Bài viết"),
                ],
              )
            : null,
      ),
      body: _hasSearched
          ? _isLoading
              ? const Center(child: CircularProgressIndicator())
              : TabBarView(
                  controller: _tabController,
                  children: [
                    _buildAll(_allResults),
                    _buildResults(_userResults),
                    _buildResults(_postResults),
                  ],
                )
          : const Center(child: Text("Tìm kiếm")),
    );
  }

  Widget _buildAll(List<dynamic> results) {
    if (_userResults.isEmpty && _postResults.isEmpty) {
      return const Center(child: Text("Không có kết quả"));
    }

    return ListView(
      children: [
        ..._userResults.take(4).map((user) => SearchCard(item: user)).toList(),
        if (_userResults.isNotEmpty && _postResults.isNotEmpty)
          const Divider(thickness: 2, color: Colors.grey),
        ..._postResults.take(5).map((post) => SearchCard(item: post)).toList(),
      ],
    );
  }

  Widget _buildResults(List<dynamic> results) {
    if (results.isEmpty) {
      return const Center(child: Text("Không có kết quả"));
    }
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final item = results[index];
        return SearchCard(item: item);
      },
    );
  }
}
