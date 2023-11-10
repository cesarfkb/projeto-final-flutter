import 'package:flutter/material.dart';
import 'package:portfolio_teste/widgets/parallax_flow_delegate.dart';

class ItemContainer extends StatefulWidget {
  final String titulo, descricao, imagem;
  bool isHover;
  ItemContainer(
      {super.key,
      required this.titulo,
      required this.descricao,
      required this.imagem,
      this.isHover = false});

  @override
  State<ItemContainer> createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  final GlobalKey _globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.5,
        child: AnimatedContainer(
            clipBehavior: Clip.antiAlias,
            duration: const Duration(milliseconds: 300),
            margin: widget.isHover
                ? const EdgeInsets.all(5)
                : const EdgeInsets.all(15),
            // height: double.infinity,
            // width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 4,
                  offset: const Offset(4, 5),
                ),
              ],
            ),
            child: Stack(
              children: [
                Flow(
                    delegate: ParallaxFlowDelegate(
                        scrollable: Scrollable.of(context),
                        listItemContext: context,
                        backgroundImageKey: _globalKey),
                    children: [
                      Image.network(
                        widget.imagem,
                        fit: BoxFit.fitHeight,
                        key: _globalKey,
                      ),
                    ]),
                Positioned(
                  bottom: 50,
                  left: 50,
                  child: Column(
                    children: [
                      Text(widget.titulo,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 50,
                              color: Colors.white)),
                      Text(widget.descricao,
                          style: const TextStyle(
                              fontSize: 25, color: Colors.white)),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
