import 'package:componentes/theme/app_tema.dart';
import 'package:flutter/material.dart';

class ListabuilderScreen extends StatefulWidget {
  const ListabuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListabuilderScreen> createState() => _ListabuilderScreenState();
}

class _ListabuilderScreenState extends State<ListabuilderScreen> {
  final List<int> imagenesid = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool cargando = false;
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      // print(
      //     '${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        // add5();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (cargando) return;
    cargando = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 3));
    add5();
    cargando = false;
    setState(() {});
    if ((scrollController.position.pixels + 100) <=
        scrollController.position.maxScrollExtent) return;
    scrollController.animateTo(scrollController.position.pixels + 120,
        duration: const Duration(milliseconds: 300),
        curve: Curves.fastOutSlowIn);
  }

  void add5() {
    final finalid = imagenesid.last;
    imagenesid.addAll([1, 2, 3, 4, 5].map((e) => finalid + e));
    setState(() {});
  }

  Future<void> onRefresh() async {
    await Future.delayed(const Duration(seconds: 2));
    final lastid = imagenesid.last;
    imagenesid.clear();
    imagenesid.add(lastid);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Animaciones'),
      // ),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTema.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: scrollController,
                  itemCount: imagenesid.length,
                  itemBuilder: (BuildContext context, int index) {
                    return FadeInImage(
                        width: double.infinity,
                        height: 300,
                        fit: BoxFit.cover,
                        placeholder: const AssetImage('assets/loading.gif'),
                        image: NetworkImage(
                            'https://picsum.photos/500/300?image${imagenesid[index]}'));
                  }),
            ),
            if (cargando)
              Positioned(
                  bottom: 40,
                  left: size.width * 0.5 - 30,
                  child: const Loadingicono())
          ],
        ),
      ),
    );
  }
}

class Loadingicono extends StatelessWidget {
  const Loadingicono({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.9), shape: BoxShape.circle),
      height: 70,
      width: 70,
      child: const CircularProgressIndicator(
        color: AppTema.primary,
      ),
    );
  }
}
