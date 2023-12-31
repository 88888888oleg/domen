extension DurationFormat on Duration {
  String toTimeZoneFormat() {
    final hours = inHours;
    final minutes = (inMinutes % 60).abs().toString().padLeft(2, '0');
    return '${hours >= 0 ? '+' : '-'}${hours.abs().toString().padLeft(2, '0')}$minutes';
  }

}