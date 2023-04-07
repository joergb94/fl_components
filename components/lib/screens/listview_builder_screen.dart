import 'package:components/themes/theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
   
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> images = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19];
  final ScrollController controller = ScrollController();
  bool isloading = false;
  
  @override
  void initState(){
    super.initState();
    controller.addListener(() {
     
      if(controller.position.pixels + 500 >= controller.position.maxScrollExtent){
        //add5();
         fetchData();
      }
    });
  }
  Future fetchData() async{
          if(isloading) return;

          isloading = true;
          setState(() { });

          await Future.delayed(const Duration(seconds:3));
          
          add5();
          isloading = false;
          setState(() { });
          
          if(controller.position.pixels + 100 <= controller.position.maxScrollExtent) return;
            controller.animateTo(controller.position.pixels + 120, 
                                duration: const Duration(milliseconds:300),
                                curve: Curves.fastOutSlowIn);
      
  }
  void add5(){
    final lastId =images.last;
    images.addAll([1,2,3,4,5].map((e) => lastId + e));
    setState(() {
      
    });
  }

  Future <void> onRefresh() async{
    await Future.delayed(const Duration(seconds:2));
    final lastId =images.last;
    images.clear();
    images.add(lastId +1);
    add5();
  }
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(

      body: MediaQuery.removePadding(
        context: context,
        removeTop:true,
        removeBottom: true,
        removeLeft: true,
        removeRight: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics:const BouncingScrollPhysics(),
                itemCount:images.length, 
                controller: controller,
                itemBuilder:(BuildContext context, int i){
                return FadeInImage(
                      width: double.infinity,
                      height: 300,
                      fit:BoxFit.cover,
                      placeholder: const AssetImage('assets/images/load.gif'),
                      image: NetworkImage('https://picsum.photos/id/${i++}/500/300')
                    );
              }),
            ),
          if(isloading)
            Positioned(
                bottom: 30,
                left: (size.width*0.5)-30,
                child: const LoadingImages())
           ],
        ),
      )
    );
  }
}

class LoadingImages extends StatelessWidget {
  const LoadingImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        color:Colors.white,
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(color:AppTheme.primary),
    );
  }
}