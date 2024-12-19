module StartupsHelper
  def valid_tags
    Post::TAGS.map{ |m| [ m ] }
  end
end
