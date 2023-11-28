import 'package:flutter/material.dart';




class AstronomyItem extends StatelessWidget {
  final dynamic astronomy;
  const AstronomyItem(this.astronomy,{super.key});
  @override
  Widget build(BuildContext context) {
    String? img = astronomy["urlToImage"];
    return InkWell(
     // onTap:()=> navigateTo(context,  WebViewScreen(url: article["url"],)),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image:  img == null ?
                const DecorationImage(
                  image: AssetImage(
                    "assets/images/no_img.jpeg",
                  ),
                  fit: BoxFit.cover,
                ):
                DecorationImage(
                  image: NetworkImage(
                    img,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: SizedBox(
                height: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        "${astronomy["title"]}",
                        style: Theme.of(context).textTheme.bodyLarge,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Text(
                      "${astronomy["date"]}",
                      style: Theme.of(context).textTheme.bodySmall,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
