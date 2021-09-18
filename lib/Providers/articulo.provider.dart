import 'dart:convert' as convert;
import 'package:http/http.dart' as http;
import 'package:semana3noticias/Models/articulo.models.dart';

class ArticuloProvider {
  getArticulos() async {
    List<Articles> listaArticulo = [];

    Map<String, String> parametros = {
      'q': 'tesla',
      'from': '2021-09-17',
      'sortBy': "publishedAt",
      'apiKey': '3527be4798784163b715b55cf1608edc'
    };
    var url = Uri.https('newsapi.org', '/v2/everything', parametros);

    // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse =
          convert.jsonDecode(response.body) as Map<String, dynamic>;
      jsonResponse['articles']
          .forEach((item) => {listaArticulo.add(Articles.fromJson(item))});
    }
    print(listaArticulo.length);
    return listaArticulo;
  }
}
