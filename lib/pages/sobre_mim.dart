import 'package:flutter/material.dart';
import 'package:portfolio_teste/utils/sobre_mim_textos.dart';
import 'package:portfolio_teste/widgets/appbar_secao.dart';

class SobreMim extends StatefulWidget {
  const SobreMim({super.key});

  @override
  State<SobreMim> createState() => _SobreMimState();
}

class _SobreMimState extends State<SobreMim> {
  final PageController _pageController = PageController();
  double _opacity = 1.0;
  String _texto = "Quem sou eu?";

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _changeOpacity() {
    setState(() {
      _opacity = _opacity == 1.0 ? 0.0 : 1.0;
    });
  }

  _changeText(int index) {
    setState(() {
      _changeOpacity();
      _texto = index == 0 ? "Quem sou eu?" : "Habilidades";
      _changeOpacity();
    });
  }

  _changePage(int index) {
    index == 0
        ? _pageController.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut)
        : _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
    _changeText(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: AppbarSecao(
          titulo: _texto,
        ),
      ),
      body: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () => _changePage(0),
                        icon: const Icon(Icons.arrow_back)),
                    Expanded(
                      child: _buildTextoPageView(),
                    ),
                    IconButton(
                        onPressed: () => _changePage(1),
                        icon: const Icon(Icons.arrow_forward))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildTextoPageView() {
    return PageView(
      controller: _pageController,
      scrollDirection: Axis.horizontal,
      physics: const NeverScrollableScrollPhysics(),
      pageSnapping: true,
      children: const [
        Text(
          texto1,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
          softWrap: true,
        ),
        Text(
          texto2,
          style: TextStyle(
            fontSize: 20,
          ),
          softWrap: true,
        ),
      ],
    );
  }
}
