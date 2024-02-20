# ./commentable.rb
module Commentable
  def add_comment(comment)
    comments[next_comment_id] = comment
  end

  def remove_comment(id)
    comments.delete(id)
  end

  def next_comment_id
    if total_comments.zero?
      total_comments + 1
    else
      comments.keys.last + 1
    end
  end

  def total_comments
    comments.count
  end

  def display # rubocop:disable Metrics/MethodLength
    display_string = "#{'-' * 50}\n"
    if @body
      display_string += "STATUS UPDATE\n"
      display_string += "Body: #{body}\n"
    else
      display_string += "PHOTO\n"
      display_string += "URL: #{image_source}\n"
      display_string += "Caption: #{caption}\n"
    end
    comments.each do |id, text|
      display_string += "#{id}: #{text}\n"
    end
    display_string += "-" * 50
    display_string
  end
end
