import 'package:aqueduct/aqueduct.dart';
import '../model/text_card.dart';

class CardController extends Controller {
  CardController(this.context);
  final ManagedContext context;

  @override
  Future<RequestOrResponse> handle(Request request) async {
    @Operation.get()
    Future<Response> getAllCards() async {
      final cardQuery = Query<TextCard>(context);
      final cards = await cardQuery.fetch();

      return Response.ok(cards);
    }
  }
}
