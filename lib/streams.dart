class SampleStreams {
  static Stream<int> numberStream() async* {
    int i = 0;
    while (true) {
      await Future.delayed(Duration(seconds: 1));
      yield ++i;
    }
  }
}
