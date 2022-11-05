import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const Text('Trending Channels',style: TextStyle(
           color: Colors.black,
           fontSize: 16,
           fontWeight: FontWeight.bold
         ),),
          SizedBox(height: 20,),
          SizedBox(
           height: 150,
           child: ListView.separated(
             shrinkWrap: true,
             scrollDirection: Axis.horizontal,
             physics: const BouncingScrollPhysics(),
               itemBuilder:(context, index) {
                 return Container(
                   width: 100,height: 200,
                   decoration: const BoxDecoration(
                   ),
                   child: Column(
                     children: [
                   Expanded(
                     child: Container(
                     decoration: const BoxDecoration(
                         image: DecorationImage(
                             image: NetworkImage('https://i.iheart.com/v3/url/aHR0cHM6Ly93d3cub21ueWNvbnRlbnQuY29tL2QvcGxheWxpc3QvZTczYzk5OGUtNmU2MC00MzJmLTg2MTAtYWUyMTAxNDBjNWIxL2E2NjIwNDI4LTY4ZmEtNGI1ZC1hNWFmLWFlMzMwMDVmNjYwZi8wNjYwZTEzZC04YWEzLTQ1ZjUtOTBlZi1hZTMzMDA1ZjY2MjEvaW1hZ2UuanBnP3Q9MTY0NDA0MDA0NyZzaXplPUxhcmdl',)
                         ,fit: BoxFit.cover)
                     ,borderRadius: BorderRadius.all(Radius.circular(15))
                     ),
                       width: 100,height: 100,
                 ),
                   ),
                       const SizedBox(height: 4,),
                       const Text('data')
                     ],
                   ),
                 );
               },
               separatorBuilder: (context, index) {
                 return const SizedBox(width: 15,);
               },
               itemCount:4),
         ),
          SizedBox(height: 20,),
          const Text('Popular Today',style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20,),
          Expanded(
            child: ListView.separated(
              physics: BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage('https://m.media-amazon.com/images/M/MV5BZjA2MDY1MDctMTUxYS00MmE3LWFhODUtOWMyZDFlNjVjMmZjXkEyXkFqcGdeQXVyMTA3MzQ4MTg0._V1_.jpg'),
                            fit: BoxFit.fill),
                          borderRadius: BorderRadius.all(Radius.circular(15))
                        ),
                        height: 400,
                        width: double.infinity,
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                 return SizedBox(height: 10,);
                },
                itemCount: 4),
          )

        ],
      ),
    );
  }
}
