def caesar_cipher(shift_number, phrase)
  new_phrase = ""

  if shift_number > 26
    shift_number = (shift_number - shift_number % 26) / 26
  elsif shift_number <= 0
    puts "Invalid number"
    return
  end

  new_array = phrase.split("")

  new_array.each do |character|
    character = character.ord

    if character.chr == " " # empty space
      new_phrase += character.chr
    elsif character >= 65 && character <= 90 #uppercase
      character += shift_number
      if character > 90
        character = character - 26
      end
    elsif character >= 97 && character <= 122 #lowercase
      character += shift_number
      if character > 122
        character = character - 26
      end
    end
    new_phrase += character.chr
  end
  return new_phrase
end

puts "Enter a phrase:"
the_phrase = gets.chomp

puts "Enter the number of shift (only numbers, bigger than zero):"
shift_numbers = gets.chomp.to_i #pick number and convert to integer

puts caesar_cipher(shift_numbers, the_phrase)
