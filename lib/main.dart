import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
           title: Column(children: [
             Row(children: [
              Icon(Icons.arrow_back_ios_new_sharp),
              const Spacer(),
              Icon(Icons.bookmark_border),
              Icon(Icons.file_upload_outlined),
              ]),
             ]), 
          
         ),
        body: Column(
          children: [
            Image.network("https://static.nationalgeographic.es/files/styles/image_3200/public/5372.600x450.webp?w=1600&h=900"
              ),
            Padding(
              padding: const EdgeInsets.only(
                top:8,
                left: 24,
                right: 24,
                bottom: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Monarch population soars 4,900",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                     // SizedBox(
                     //   height: 8,
                     // ),
                      Text(
                        "percent since last year in thrilling 2021",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "western migration",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],
                  ),
                 ],
              ),
            ),

              Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.network(
                        "https://upload.wikimedia.org/wikipedia/commons/c/c0/Lincoln_Brower.jpg",
                        width: 65,
                      ),
                 SizedBox(
                  width: 8,
                 ),     
                 Text(
                       "By Andy Corbley",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
               
                
                    ],
                  ) ,
                 
                    Text(
                        "1hr ago",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey,
                        ),
                      ),
                ],
              ),
            ),



            Padding(
              padding: const EdgeInsets.only(
                left: 24,
                right: 24,
                bottom: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  iconBar(
                    "8 comments",
                    Icons.comment_bank_outlined,
                  ),
                  iconBar(
                    "34 likes",
                    Icons.favorite_border,
                  ),
                  iconBar(
                    "Share",
                    Icons.share,
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 8,
                left: 24,
                right: 24,
                ),
              child: Text(
                  "When just 200 Western monarch buffetfile arrived in the Pismo Bech Butterfly Grove from their northerly migration last year, park rangers feared then treasured insect would soon be gona forever. ",
                    style: TextStyle(
                    fontSize: 18,
                      ),
            ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: 16,
                left: 24,
                right: 24,
              ),
              child: Text(
                  "This year ,however, voluntarees talled their numbers at over 100,000, a spectacular swarm of hope that traveled down from as far noth as Canada to the spend the winter on the California Coast. ",
                   style: TextStyle(
                    fontSize: 18,
                     ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget iconBar(String accion, IconData icono) {
  return Row(
    children: [
      Icon(
        icono,
      ),
      SizedBox(
        height: 16,
      ),
      Text(
        accion,
        style: TextStyle(
           fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}
