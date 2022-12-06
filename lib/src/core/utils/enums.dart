enum Status {
  empty('Status is empty.'),
  loading('Status is progressing.'),
  completed('Status is complete.'),
  failed('Status has failed.');

  final String description;
  const Status(this.description);

  bool isCompleted() => this == completed || this == failed;
}
