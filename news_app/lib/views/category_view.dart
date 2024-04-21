import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CaterogyView extends StatelessWidget {
  const CaterogyView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            category,
            style: TextStyle(
                color: Colors.orange,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(
            left: 16,
            right: 16,
            // top: 60,
          ),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              NewsListVeiwBuilder(
                category: category,
              ),
            ],
          ),
        ));
  }
}
