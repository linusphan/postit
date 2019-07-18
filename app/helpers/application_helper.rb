module ApplicationHelper
  def fix_url(str)
    (str.starts_with?('http://') || str.starts_with?('https://')) ? (
      str
    ) : (
      "http://#{str}"
    )
  end

  def display_datetime(dt)
    if logged_in? && !current_user.time_zone.blank?
      dt = dt.in_time_zone(current_user.time_zone)
    end

    dt.strftime("%m/%d/%Y %l:%M%P %Z")
  end
end
