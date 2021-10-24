import 'package:url_launcher/url_launcher.dart';

class Rotas{
  static final PAGINA_INICIAL = '/pagina-inicial';
  static final SOBRE_MIM = '/sobre-mim';
  static final TRABALHOS = '/trabalhos';
  static final CONTATO = '/contato';
  static final MENU_CUSTOM_MINIMO = '/menu-custom-minimo';
}

abrirLinkedin() async{
  await  launch('https://www.linkedin.com/in/charleston-ribeiro-dos-passos-a50955122/');
}

abrirGitHub() async{
  await launch('https://github.com/CharlestonRibeiro');
}

abrirEmail() async{
  await launch('mailto:charleston.passos@gmail.com?');
}