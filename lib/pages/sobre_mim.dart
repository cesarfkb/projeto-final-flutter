import 'package:flutter/material.dart';
import 'package:portfolio_teste/widgets/sobre_mim_textos.dart';
import 'package:portfolio_teste/widgets/appbar_comum.dart';
import 'package:portfolio_teste/widgets/background.dart';

class SobreMim extends StatefulWidget {
  const SobreMim({super.key});

  @override
  State<SobreMim> createState() => _SobreMimState();
}

class _SobreMimState extends State<SobreMim> {
  final PageController _pageController = PageController();
  double _opacity = 1.0;
  int _index = 0;
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
      _texto = index == 0 ? "Quem sou eu?" : "Habilidades";
    });
  }

  _changePage(int index) {
    _index = index;
    index == 0
        ? _pageController.previousPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut)
        : _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut);
    _changeOpacity();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppbarComum(
          titulo: "",
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              AnimatedOpacity(
                  onEnd: () {
                    _changeText(_index);
                    _opacity == 0 ? _changeOpacity() : null;
                  },
                  duration: const Duration(milliseconds: 300),
                  opacity: _opacity,
                  child: Text(_texto, style: const TextStyle(fontSize: 60))),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () => _changePage(0),
                        icon: const Icon(Icons.arrow_back)),
                    Expanded(child: _buildTextoPageView()),
                    IconButton(
                        onPressed: () => _changePage(1),
                        icon: const Icon(Icons.arrow_forward))
                  ],
                ),
              ),
            ],
          ),
        ],
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
        Align(
          alignment: Alignment.center,
          child: Text(
            texto1,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            softWrap: true,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Text(
            texto2,
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
