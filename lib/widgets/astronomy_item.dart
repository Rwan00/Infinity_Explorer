import 'package:flutter/material.dart';




class AstronomyItem extends StatelessWidget {
  final dynamic astronomy;
  const AstronomyItem(this.astronomy,{super.key});
  @override
  Widget build(BuildContext context) {
    String? img = astronomy["url"];
    return InkWell(
      //onTap: () => selectMeal(context),
      child: Container(
        height: 350,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 10,
          shadowColor: const Color.fromRGBO(222, 18, 6, 1),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: img == null
                        ? Image.asset(
                            "assets/images/no_img.jpeg",
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          )
                        : Image.network(
                            img,
                            height: 200,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          ),
                  ),
                  Positioned(
                    bottom: 15,
                    right: 5,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 25),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.purple.withOpacity(0.7),
                            //clr,
                            const Color.fromRGBO(254, 190, 140, 0.5),
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                      width: 300,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
                        child: Text(
                          "${astronomy["title"]}",
                          style: Theme.of(context).textTheme.bodySmall,
                          softWrap: true,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const SizedBox(
                      width: 6,
                    ),
                    Expanded(
                      child: Text(
                        "${astronomy["explanation"]}",
                        maxLines: 5,
                        //overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
    /*InkWell(
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
    );*/
  }
}
