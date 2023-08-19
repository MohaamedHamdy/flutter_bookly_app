import 'package:bookly/features/home/presentation/views/widgets/book_details_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'custom_image_container.dart';

class ImagesListView extends StatelessWidget {
  const ImagesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24, top: 30, bottom: 30),
      height: MediaQuery.of(context).size.height * 0.25,
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => InkWell(
          onTap: (){
            Get.to(
                () => BookDetailsBody(),
            );
          },
          child: CustomImageContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.all(10.0),
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 0.30),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_right,size: 20,)),
                ),
              ],
            ),
          ),
        ),
        separatorBuilder: (context, index) => const SizedBox(
          width: 10.0,
        ),
        itemCount: 5,
      ),
    );
  }
}
