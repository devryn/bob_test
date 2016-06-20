class Bob

  def hey(remark)
    if remark.gsub(/\s+/, "") == ""
      'Fine. Be that way!'
    elsif remark.gsub(/(\d|\W^|,|\s)/, '').empty?
      'Whatever.'
    elsif remark.end_with?("?") && remark == remark.capitalize || remark == remark.downcase# if a string ends in ? logic goes here
      'Sure.'
    elsif remark == remark.upcase
      'Whoa, chill out!'
  #  elsif remark == ""
  #    'Fine. Be that way!'
    elsif remark.end_with?("?")
      'Sure.'
    else
      'Whatever.'
    end
  end
end


#
# if remark.upcase
#   puts 'Whoa, chill out!'
#   if remark('?')
#     puts 'Sure.'
#   if remark == ''
#       puts 'Fine. Be that way!'
#     else
#       puts 'Whatever.'
#   end
#   end
