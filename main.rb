def caesar_cipher(sent, num)
    result = ""
  sent.split("").each do |char|
    if char.match(/[A-Za-z]/)  
      shift = char.ord + num
      if char.match(/[A-Z]/)  
        if shift > 'Z'.ord
          shift -= 26
        end
      else  
        if shift > 'z'.ord
          shift -= 26
        end
      end
      result += shift.chr
    else
      result += char
    end
  end
  result
end

ciphered_text = caesar_cipher("What a string!", 5)
puts ciphered_text