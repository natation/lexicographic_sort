def lexicographic_sort(strings, lex_order_str)
  return strings if strings.empty? || lex_order_str.empty?

  max_length = strings.map(&:length).max

  (max_length - 1).downto(0) do |i|
    in_lex_order = {"" => []}
    lex_order_str.length.times do |i|
      letter = lex_order_str[i]
      in_lex_order[letter] = []
    end

    strings.each do |string|
      if string.length <= i
        in_lex_order[""] << string
      else
        letter = string[i]
        in_lex_order[letter] << string
      end
    end

    strings = []
    in_lex_order.values.each do |lex_val|
      lex_val.each { |string| strings << string }
    end
  end
  strings
end

# For seeing given testcase output on command line and not in pry/irb
if __FILE__ == $PROGRAM_NAME
  p lexicographic_sort(["acb", "abc", "bca"], "abc")
  p lexicographic_sort(["acb", "abc", "bca"], "cba")
  p lexicographic_sort(["aaa","aa",""], "a")
end
