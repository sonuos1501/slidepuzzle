class Durations {
  static String watchFormat(Duration duration) {
    String twoDigits(int n) {
      if (n >= 10) return '$n';
      return '0$n';
    }

    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    String twoDigitMilliSeconds = twoDigits(duration.inMilliseconds.remainder(100));
    return '$twoDigitMinutes:$twoDigitSeconds:$twoDigitMilliSeconds';
  }
}
