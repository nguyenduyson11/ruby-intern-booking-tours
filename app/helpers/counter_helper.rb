module CounterHelper
  def count_stt num1, num2
    (num1 - 1) * Settings.user.panigate_size + num2 + 1
  end
end
