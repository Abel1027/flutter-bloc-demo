abstract class PowerEvent {}

class SetInitialState extends PowerEvent {
  SetInitialState(this.value);

  final double value;
}

class ComputePowerEvent extends PowerEvent {
  ComputePowerEvent(this.power);

  final int power;
}
