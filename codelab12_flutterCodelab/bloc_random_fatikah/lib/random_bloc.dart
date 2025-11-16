import 'dart:async';
import 'dart:math';

class RandomNumberBloc {
	// Controller for input events (triggers to generate a random number)
	final _generateRandomController = StreamController<void>();

	// Controller for output (emitted random numbers)
	final _randomNumberController = StreamController<int>();

	// Input sink: add any event to trigger a new random number
	Sink<void> get generateRandom => _generateRandomController.sink;

	// Output stream: listen to receive random numbers
	Stream<int> get randomNumber => _randomNumberController.stream;

	RandomNumberBloc() {
		_generateRandomController.stream.listen((_) {
			final random = Random().nextInt(10);
			_randomNumberController.sink.add(random);
		});
	}

	void dispose() {
		_generateRandomController.close();
		_randomNumberController.close();
	}
}

