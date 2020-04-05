import 'package:checklist/models/item.dart';
import 'package:checklist/utils/loaditems.dart';

List<Item> loadItemsAfterFlightNineSeven() {

  List<List<String>> itemsAfterFlightNineSeven = [
    ["Estacionamento", "Determinar local de parada."],
    ["Aeronave", "Verificar panes e inspeções."],
    ["Abastecimento", "Realizar o abastecimento."],
    ["Oxigênio","Verificar nível."],
    ["QTU", "Fiscalizar a realização."],
    ["QTA", "Fiscalizar a realização."],
    ["Limpeza", "Verificar cockpit, cabine e banheiro."],
    ["Pinos", "Confirmar a pinagem."],
    ["Bloqueios", "Confirmar o bloqueio."],
    ["Caixa de Ferramentas", "Confirmar remoção."],
    ["Kit Limpeza", "Confirmar remoção."],
    ["Kit Selva", "Confirmar remoção."],
    ["Lixo", "Confirmar remoção."],
    ["Comissaria", "Verificar compartimentos."],
    ["Cafeteira", "Confirmar remoção."],
    ["Itens de navegação","Confirmar remoção."],
    ["Relatório","Guardar relatório."],
];

  return loadItems(itemsAfterFlightNineSeven);
}
