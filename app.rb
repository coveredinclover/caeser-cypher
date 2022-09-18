def caesar_cypher(string, modifier = nil)
  array1 = string.chars.map{|x| x.ord}
  char_array = array1.map{|x| (x >= 97 && x <= 122) || (x >= 65 and x <= 90) ? x : x.chr}
  wrap_array = char_array.map{|x| x.is_a?(Numeric) ? x + modifier : x}
  wrapped_array = wrap_array.map{|x| x.is_a?(Numeric) && (x > 122 || (x > 90 && x < 97)) ? x - 26 : x}
  final_array = wrapped_array.map{|x| x.chr}
  p final_array.join('')
end

caesar_cypher('The quick brown fox jumps over the lazy dog', 1)

