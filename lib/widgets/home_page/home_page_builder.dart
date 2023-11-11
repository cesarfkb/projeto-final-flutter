import 'package:flutter/material.dart';
import 'package:portfolio_teste/breakpoints.dart';
import 'package:portfolio_teste/widgets/home_page/home_page_items.dart';
import 'package:portfolio_teste/widgets/home_page/home_page_items_data.dart';

class HomePageBuilder extends StatefulWidget {
  final List<HomePageItemsData> cartoes;
  final bool isVertical;
  const HomePageBuilder(
      {super.key, required this.cartoes, this.isVertical = true});

  @override
  State<HomePageBuilder> createState() => _HomePageBuilderState();
}

class _HomePageBuilderState extends State<HomePageBuilder> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;
      if (maxWidth > mobile) {
        return SizedBox(
          width: MediaQuery.of(context).size.width * 0.6,
          child: _builderListView(),
        );
      } else {
        return SizedBox(
            height: MediaQuery.of(context).size.height * 0.4,
            child: _builderListView());
      }
    });
  }

  _builderListView() {
    return ListView.builder(
      scrollDirection: widget.isVertical ? Axis.vertical : Axis.horizontal,
      physics: const BouncingScrollPhysics(),
      itemCount: widget.cartoes.length,
      itemBuilder: (BuildContext context, int index) {
        // for (var e in widget.cartoes) {
        //   e.setImageURL(e.search);
        // }
        return InkWell(
          onHover: (_) {
            setState(() {
              _index = index;
            });
          },
          onTap: () {
            widget.cartoes[index].changePage(context);
          },
          child: HomePageItems(
            key: Key(index.toString()),
            titulo: widget.cartoes[index].titulo,
            descricao: widget.cartoes[index].descricao,
            imagem: widget.cartoes[index].urlImagem,
            isHover: _index == index,
          ),
        );
      },
    );
  }
}
