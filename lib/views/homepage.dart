import 'package:covid19/controller/controller.dart';
import 'package:covid19/views/recordTile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  final CovidController controller = Get.put(CovidController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Colors.amber.shade50,
      appBar: AppBar(
        backgroundColor: Color(0x00ff772266),
        leading: Icon(Icons.coronavirus),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_bag_outlined,
            ),
          ),
        ],
      ),
      body: 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Obx(() {
                  if (controller.isLoading.value)
                    return Center(child: CircularProgressIndicator());
                  else
                    return StaggeredGridView.countBuilder(
                      crossAxisCount: 1,
                      itemCount: 1,
                      //crossAxisSpacing: 10,
                      itemBuilder: (context, index) {
                         return RecordTile(controller.recordList.value);
                        
                      },
                      staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                    );
                    
                }),
              ),
            ),
          ],
        ),
      
    );
  }
}
