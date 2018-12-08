module ColoniesHelper
  def icon_tag(colony)
    if colony.icon.attached?
      url_for(colony.icon)
    else
      "/colony_icon.png"
    end
  end
end
