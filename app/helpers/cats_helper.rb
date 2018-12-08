module CatsHelper
  def avatar_tag(cat)
    if cat.avatar.attached?
      url_for(cat.avatar)
    else
      "/avatar.png"
    end
  end
end
