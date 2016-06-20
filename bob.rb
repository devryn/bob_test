class Bob
  QUESTION = "?"
  EMPTY = ""

  def hey(remark)
    if remark.gsub(/\s+/, EMPTY) == EMPTY
      'Fine. Be that way!'
    elsif remark.gsub(/(\d|\W^|,|\s)/, '').empty?
      'Whatever.'
    elsif asking_question?(remark) && remark == remark.capitalize || remark == remark.downcase# if a string ends in ? logic goes here
      'Sure.'
    elsif remark == remark.upcase
      'Whoa, chill out!'
    elsif asking_question?(remark)
      'Sure.'
    else
      'Whatever.'
    end
  end

  def asking_question?(remark)
    remark.end_with?(QUESTION)
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
