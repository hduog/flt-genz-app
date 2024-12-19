import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/constants/constants.dart';
import 'package:flutter_application_1/core/data/models/Search/SearchModel/SearchModel.dart';
import 'package:flutter_application_1/core/service/search/search_service.dart';
import 'package:flutter_application_1/ui/widget/search_card.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final SearchService _searchService = SearchService();
  TextEditingController _searchController = TextEditingController();
  List<SearchUser> _searchUserResults = [];
  List<SearchPosts> _searchPostResults = [];
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this); 
  }

  Future<void> _performSearch() async {
    final String keyword = _searchController.text.trim();
    if (keyword.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Nội dung tìm kiếm không được trống')),
      );
      return;
    }

    setState(() => _isLoading = true);

    try {
      final results = await Future.wait([
        _searchService.searchUser(keyword), 
        _searchService.searchPosts(keyword), 
      ]);

      setState(() {
        _searchUserResults = List<SearchUser>.from(
            results[0] as List); 
        _searchPostResults = List<SearchPosts>.from(
            results[1] as List); 
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
      backgroundColor: colorBackground,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 30, 16, 8),
            child: Row(
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios, color: Colors.grey[700]),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 4,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: TextField(
                      controller: _searchController,
                      style: const TextStyle(fontSize: 14),
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 7, horizontal: 16),
                        hintText: "Nhập từ khóa",
                        hintStyle:
                            const TextStyle(fontSize: 13, color: Colors.grey),
                        suffixIcon: IconButton(
                          icon:
                              Icon(Icons.search, size: 18, color: Colors.grey),
                          onPressed: _performSearch,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Theme.of(context).primaryColor,
            labelColor: Theme.of(context).primaryColor,
            unselectedLabelColor: Colors.grey,
            labelStyle: const TextStyle(fontSize: 13),
            tabs: const [
              SizedBox(
                width: 100, 
                height: 30,
                child: const Tab(text: "Tài khoản"),
              ),
              SizedBox(
                width: 100, 
                height: 30,
                child: const Tab(text: "Bài viết"),
              ),
            ],
          ),
          Expanded(
            child: _isLoading
                ? Center(child: CircularProgressIndicator())
                : TabBarView(
                    controller: _tabController,
                    children: [
                      ListView.builder(
                        itemCount: _searchUserResults.length,
                        itemBuilder: (context, index) {
                          final user = _searchUserResults[index];
                          return SearchCard(item: user);
                        },
                      ),
                      ListView.builder(
                        itemCount: _searchPostResults.length,
                        itemBuilder: (context, index) {
                          final post = _searchPostResults[index];
                          return SearchCard(
                              item: post); // Assuming a SearchCardPost widget
                        },
                      ),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}
