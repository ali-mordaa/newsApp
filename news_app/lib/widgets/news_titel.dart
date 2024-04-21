import 'package:flutter/material.dart';
import 'package:news_app/models/articles_model.dart';

class NewsTitel extends StatelessWidget {
  const NewsTitel({
    super.key,
    required this.articles,
  });

  final ArticlesModel articles;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(6),
              child: Image.network(
                articles.image != null
                    ? articles.image!
                    : "https://news.mit.edu/sites/default/files/styles/news_article__image_gallery/public/images/202401/MIT%20ESI%20Local%20Journalism%20Headlines.png?itok=KGGPoxQh",
              )),
          Text(
            articles.titel,
            style: const TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articles.subTitel ?? "",
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 16,
            ),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
