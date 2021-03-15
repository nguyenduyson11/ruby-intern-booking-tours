module ViewAdminHelper
  def selected status
    case status
    when BookTour.statuses.key(0)
      Settings.user.wait
    when BookTour.statuses.key(1)
      Settings.user.accept
    when BookTour.statuses.key(2)
      Settings.user.begin
    when BookTour.statuses.key(3)
      Settings.user.close
    end
  end
end
