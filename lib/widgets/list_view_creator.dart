import 'package:flutter/material.dart';
import 'package:portfolio_teste/breakpoints.dart';
import 'package:portfolio_teste/widgets/cartao.dart';
import 'package:portfolio_teste/widgets/item_container.dart';

class ListViewCreator extends StatefulWidget {
  final List<Cartao> cartoes;
  final bool isVertical;
  const ListViewCreator(
      {super.key, required this.cartoes, this.isVertical = true});

  @override
  State<ListViewCreator> createState() => _ListViewCreatorState();
}

class _ListViewCreatorState extends State<ListViewCreator> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;
      if (maxWidth > mobile) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.6,
          child: _builderListView(),
        );
      } else {
        return _builderListView();
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
          child: ItemContainer(
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
