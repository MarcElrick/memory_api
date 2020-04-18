import 'package:aqueduct/aqueduct.dart';
import '../model/text_card.dart';

class CardController extends ResourceController {
  CardController(this.context);
  final ManagedContext context;

  @Operation.get()
  Future<Response> getAllCards() async {
    final cardQuery = Query<TextCard>(context);
    final cards = await cardQuery.fetch();

    return Response.ok(cards);
  }

  @Operation.post()
  Future<Response> createCard() async {
    final card = TextCard()..read(await request.body.decode(), ignore: ["id"]);
    final query = Query<TextCard>(context)..values = card;

    final insertedCard = await query.insert();

    return Response.ok(insertedCard);
  }
}
