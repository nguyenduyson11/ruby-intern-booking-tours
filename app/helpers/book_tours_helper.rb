module BookToursHelper
  def count num1, num2 = 1
    num1 + num2
  end

  def value_select_tag
    [[t("wait"), Settings.user.wait],
      [t("accept"), Settings.user.accept], [t("begin"),
        Settings.user.begin], [t("close"), Settings.user.close]]
  end
end
