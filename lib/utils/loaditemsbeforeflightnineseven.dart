import 'package:checklist/models/item.dart';
import 'package:checklist/utils/loaditems.dart';

List<Item> loadItemsBeforeFlightNineSeven() {
  List<List<String>> itemsBeforeFlightNineSeven = [
    ["Saída", "Confirmar local de saída."],
    ["Abastecimento", "Confirmar o abastecimento."],
    ["Oxigênio","Confirmar o níve de O2."],
    ["Relatório", "Colocar na aeronave."],
    ["Comissaria", "Confirmar colocação."],
    ["Bloqueios", "Confirmar desbloqueio."],
    ["Pinos", "Confirmar retirada dos pinos."],
    ["Óleo", "Confirmar latas de óleo."],
    ["Kit Limpeza", "Confirmar colocação."],
    ["Cafeteira", "Confirmar colocação."],
    ["Caixa de ferramenta", "Confirmar com mecânico."],
    ["Pasta de Navegação", "Confirmar com mecânico."],
    ["OM e afins", "Confirmar com o mecânico."],
  ];

  return loadItems(itemsBeforeFlightNineSeven);
}
