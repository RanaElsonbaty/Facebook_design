import 'package:flutter/material.dart';
class FaceBookScreen extends StatelessWidget {
  const FaceBookScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("facebook"),
      ),
      body:  Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            separatorBuilder: (ctx,index) {
              return const SizedBox(
                height: 10,
              );
            } ,
            itemCount: 10,
            itemBuilder: (ctx,index){
              if(index==0) {
                return SizedBox(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (ctx,index){
                      return ClipRRect(
                        borderRadius:BorderRadius.circular(15) ,
                        child: Stack(
                          children:[
                            Image.asset("assets/images/story.jpeg",
                              height: 100,),
                            const CircleAvatar(
                              radius: 15,
                              child: Icon(Icons.person,
                                  color: Colors.white
                              ),
                            ),
                            const Positioned(
                              bottom: 6,
                              child: Text("owner",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                ),),

                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder:(ctx,index){
                      return const SizedBox(
                        width: 5,
                      );
                    },
                    itemCount: 20,
                  ),
                );
              }
              return Column(
                children: [
                  const SizedBox(height: 20,),
                  Row(
                    children:[
                      const CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 15,),
                      Column(
                        children: [
                          const Text("owner"),
                          Row(
                            children: const [
                              Text("3h"),
                              Icon(Icons.public)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text("My Post",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                      ),),
                  ),
                  const SizedBox(height: 20,),
                  Row(
                    children: [
                      const Text("100"),
                      Image.asset("assets/images/reacts.jpeg", height: 20 ),
                      const Spacer(),
                      const Text("100 comments")
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  const SizedBox(height: 10,),
                  Row(
                    children: [
                      Image.asset("assets/images/like.jpeg", height: 20,),
                      const SizedBox(width: 10,),
                      const Text("Like"),
                      const Spacer(),
                      Image.asset("assets/images/comment.jpeg", height: 20,),
                      const SizedBox(width: 10,),
                      const Text("Comment"),
                      const Spacer(),
                      Image.asset("assets/images/share.jpeg", height: 20,),
                      const SizedBox(width: 10,),
                      const Text("Share"),
                    ],
                  ),
                  const SizedBox(height: 10,),
                  const Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ],
              );
            }
        ),
      ),
    );
  }
}
