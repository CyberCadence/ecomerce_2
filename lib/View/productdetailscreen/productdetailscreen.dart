import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailScreen extends StatelessWidget {
   ProductDetailScreen({Key? key}) : super(key: key);

  List<int> index =[1,2,3,4];
   List<int> pindex =[1,2,3,4];

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: h,
          width: w,
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: h / 2.4,
                  decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      borderRadius: BorderRadius.circular(25)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.arrow_back,
                            ),
                            splashRadius: 20,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.shopping_cart),
                            splashRadius: 20,
                          )
                        ],
                      ),
                      Expanded(
                        child: PageView.builder(
                            itemCount: pindex.length,
                            itemBuilder: (c, i) {
                              return Center(
                                  child:
                                      Image.asset("assets/images/banana.png"));
                            }),
                      ),
                     Padding(
                       padding: const EdgeInsets.only(bottom: 20),
                       child: SizedBox(
                        height: 20,
                        width: double.infinity,
                         child: Center(
                           child: ListView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: index.length,
                            itemBuilder: (c,i){
                              return Container(
                                
                                margin: EdgeInsets.only(right: 5),
                                height: 7,
                                width: 7,
                                decoration:  BoxDecoration(
                                  shape: BoxShape.circle,
                                 // borderRadius: BorderRadius.all(Radius.circular(50)),
                                  color: pindex[i]==index[i]?Colors.white:Colors.grey
                                ),
                              );
                            }),
                         ),
                       ),
                     )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Organic Bananas",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 22)),
                      Container(
                        height: 40,
                        width: 100,
                        padding: EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                            color: Color(0XFFE6FFEE),
                            borderRadius: BorderRadius.circular(8)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.remove,
                              color: Colors.green.shade900,
                            ),
                            Text(
                              "01",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.green.shade900),
                            ),
                            Icon(
                              Icons.add,
                              color: Colors.green.shade900,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Text(
                    "12 pecs   500gm to 900gm",
                    style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            RatingBar.builder(
                              allowHalfRating: true,
                              initialRating: 3.5,
                              glowColor: Colors.amber,
                              itemSize: 20,
                              itemBuilder: (c, i) => Icon(
                                Icons.star,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (d) {},
                            ),
                            Text(" 4.0")
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "\$40.00 ",
                              style: TextStyle(
                                  decoration: TextDecoration.lineThrough),
                            ),
                            Text(
                              " \$20.00 ",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            )
                          ],
                        )
                      ]),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "Free ship",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                ),
                Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: Colors.transparent),
                  child: ExpansionTile(
                    title: Text("Detail"),
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                        child: Wrap(
                          children: [
                            Text(
                              "In academic writing, readers expect each paragraph to have a sentence or two that captures its main point. They’re often called “topic sentences,” though many writing instructors prefer to call them “key sentences.” There are at least two downsides of the phrase “topic sentence.” First, it makes it seem like the paramount job of that sentence is simply to announce the topic of the paragraph. Second, it makes it seem like the topic sentence must always be a single grammatical sentence. Calling it a “key sentence” reminds us that it expresses the central idea of the paragraph. And sometimes a question or a two-sentence construction functions as the key.",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
