module UsersHelper
  def gravatar_for(user)
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    image_tag(  "https://secure.gravatar.com/avatar/" + gravatar_id, 
                alt: user.name, 
                class: "gravatar") 
  end
end
