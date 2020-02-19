class PigLatinizer 
  attr_reader :text
  def initialize(text)
    @text = text.downcase
  end
  def piglatinize_
    #1. split the input
    input_split = text.split(" ")
    final_pig =''
    #2. work with each elem in input_split array
    input_split.each do |element|
      # element start with vowel
      if element.start_with?('y','u','i','o','a','e')
        transform = element+'way'
        final_pig += transform + " "
        
      else
        #split element when hit first vowel
        second_split = element.split(/([eyuioa].*)/)
        transform = second_split[1]+second_split[0]+"ay"
        final_pig += transform + ' '
      end
    end
    final_pig
  end 

end