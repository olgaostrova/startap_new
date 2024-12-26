module StartupsHelper
  def valid_tags
    Post::TAGS.map{ |m| [ m ] }
  end

  def get_random_color 
    colors = ["purple", "green", "white"]
    colors.sample
  end
end
