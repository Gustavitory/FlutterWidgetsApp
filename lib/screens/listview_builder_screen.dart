import 'package:components_app/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;
  void add5() {
    final lastId = imagesId.last;
    imagesId.addAll([1, 2, 3, 4, 5].map((e) => e + lastId));
  }

  Future fetchData() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 3));
    add5();
    isLoading = false;
    setState(() {});
    if (scrollController.position.pixels >=
        (scrollController.position.maxScrollExtent - 500)) {
      scrollController.animateTo(scrollController.position.pixels + 120,
          duration: const Duration(milliseconds: 250),
          curve: Curves.fastOutSlowIn);
    }
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagesId.last;
    imagesId.clear();
    setState(() {});
    imagesId.add(lastId + 1);
    add5();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      (scrollController.position.maxScrollExtent - 500) <=
              scrollController.position.pixels
          ? fetchData()
          : null;
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size; //alto y hancho del dispositivo
    return Scaffold(
        /*
        Los listviewbuilder no son constantes porque dependen de las dimensiones de la pantalla
       */
        body: MediaQuery.removePadding(
      context: context,
      removeTop: true,
      removeBottom: true,
      child: Stack(
        children: [
          RefreshIndicator(
            color: AppTheme.primary,
            onRefresh: onRefresh,
            child: ListView.builder(
              controller: scrollController,
              itemBuilder: (BuildContext context, int ind) {
                //fadeinimage es lazy loading en imagenes
                return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image=${imagesId[ind]}'));
              },
              itemCount: imagesId.length,
            ),
          ),
          if (isLoading)
            Positioned(
              bottom: 40,
              left: (size.width * 0.5) - 30,
              child: const LoadingIcon(),
            )
        ],
      ),
    ));
  }
}

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      height: 60,
      width: 60,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        // borderRadius: BorderRadius.circular(100),
        shape: BoxShape.circle,
        color: Colors.white,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
