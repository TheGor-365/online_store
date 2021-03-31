module AccountsHelper

  def profile_picture account, width
    image_path = account.avatar.present? ? account.avatar.url : 'profile.jpg'
    image_tag(image_path, width: width, height: width, class: 'rounded')
  end

end
