require 'string_utf_support'

class CharacterFormat
  Isolated = 1
  Initial = 2
  Medial = 3
  Final = 4
end


class ArabicCharacterInfo

  @@arabic_characters_map = nil
  attr_accessor :common_encoding , :format_encodings, :is_connected

  def initialize(common, isolated, final, initial, medial, is_connected)
    @common_encoding = common.unicode_to_utf8
    @format_encodings = Hash.new
    @format_encodings[CharacterFormat::Isolated] = isolated.unicode_to_utf8
    @format_encodings[CharacterFormat::Initial] = initial.unicode_to_utf8
    @format_encodings[CharacterFormat::Medial] = medial.unicode_to_utf8
    @format_encodings[CharacterFormat::Final] = final.unicode_to_utf8
    @is_connected = is_connected
  end

  def ArabicCharacterInfo.get_arabic_characters_map

    if !@@arabic_characters_map.nil?
      return @@arabic_characters_map
    end

    map = Hash.new

      #Alef
      new_character = ArabicCharacterInfo.new(
        "U+0627",	#Common
        "U+fe8d", #Isolated
        "U+fe8e", #Final
        "U+fe8d", #Initial
        "U+fe8e", #Medial
        false)
    map[new_character.common_encoding] = new_character

    #Beh
      new_character = ArabicCharacterInfo.new(
        "U+0628",	#Common
        "U+fe8f", #Isolated
        "U+fe90", #Final
        "U+fe91", #Initial
        "U+fe92", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Teh
      new_character = ArabicCharacterInfo.new(
        "U+062a",	#Common
        "U+fe95", #Isolated
        "U+fe96", #Final
        "U+fe97", #Initial
        "U+fe98", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Theh
      new_character = ArabicCharacterInfo.new(
        "U+062b",	#Common
        "U+fe99", #Isolated
        "U+fe9a", #Final
        "U+fe9b", #Initial
        "U+fe9c", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Jeem
      new_character = ArabicCharacterInfo.new(
        "U+062c",	#Common
        "U+fe9d", #Isolated
        "U+fe9e", #Final
        "U+fe9f", #Initial
        "U+fea0", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #7ah
      new_character = ArabicCharacterInfo.new(
        "U+062d",	#Common
        "U+fea1", #Isolated
        "U+fea2", #Final
        "U+fea3", #Initial
        "U+fea4", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #7'ah
      new_character = ArabicCharacterInfo.new(
        "U+062e",	#Common
        "U+fea5", #Isolated
        "U+fea6", #Final
        "U+fea7", #Initial
        "U+fea8", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Dal
      new_character = ArabicCharacterInfo.new(
        "U+062f",	#Common
        "U+fea9", #Isolated
        "U+feaa", #Final
        "U+fea9", #Initial
        "U+feaa", #Medial
        false)
    map[new_character.common_encoding] = new_character

    #Thal
      new_character = ArabicCharacterInfo.new(
        "U+0630",	#Common
        "U+feab", #Isolated
        "U+feac", #Final
        "U+feab", #Initial
        "U+feac", #Medial
        false)
    map[new_character.common_encoding] = new_character

    #Rah
      new_character = ArabicCharacterInfo.new(
        "U+0631",	#Common
        "U+fead", #Isolated
        "U+feae", #Final
        "U+fead", #Initial
        "U+feae", #Medial
        false)
    map[new_character.common_encoding] = new_character

    #Zein
      new_character = ArabicCharacterInfo.new(
        "U+0632",	#Common
        "U+feaf", #Isolated
        "U+feb0", #Final
        "U+feaf", #Initial
        "U+feb0", #Medial
        false)
    map[new_character.common_encoding] = new_character

    #Seen
      new_character = ArabicCharacterInfo.new(
        "U+0633",	#Common
        "U+feb1", #Isolated
        "U+feb2", #Final
        "U+feb3", #Initial
        "U+feb4", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Sheen
      new_character = ArabicCharacterInfo.new(
        "U+0634",	#Common
        "U+feb5", #Isolated
        "U+feb6", #Final
        "U+feb7", #Initial
        "U+feb8", #Medial
        true)
    map[new_character.common_encoding] = new_character


    #Sad
      new_character = ArabicCharacterInfo.new(
        "U+0635",	#Common
        "U+feb9", #Isolated
        "U+feba", #Final
        "U+febb", #Initial
        "U+febc", #Medial
        true)
    map[new_character.common_encoding] = new_character


    #Dad
      new_character = ArabicCharacterInfo.new(
        "U+0636",	#Common
        "U+febd", #Isolated
        "U+febe", #Final
        "U+febf", #Initial
        "U+fec0", #Medial
        true)
    map[new_character.common_encoding] = new_character


    #Tah
      new_character = ArabicCharacterInfo.new(
        "U+0637",	#Common
        "U+fec1", #Isolated
        "U+fec2", #Final
        "U+fec3", #Initial
        "U+fec4", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Thah
      new_character = ArabicCharacterInfo.new(
        "U+0638",	#Common
        "U+fec5", #Isolated
        "U+fec6", #Final
        "U+fec7", #Initial
        "U+fec8", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #3ein
      new_character = ArabicCharacterInfo.new(
        "U+0639",	#Common
        "U+fec9", #Isolated
        "U+feca", #Final
        "U+fecb", #Initial
        "U+fecc", #Medial
        true)
    map[new_character.common_encoding] = new_character


    #3'ein
      new_character = ArabicCharacterInfo.new(
        "U+063a",	#Common
        "U+fecd", #Isolated
        "U+fece", #Final
        "U+fecf", #Initial
        "U+fed0", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Feh
      new_character = ArabicCharacterInfo.new(
        "U+0641",	#Common
        "U+fed1", #Isolated
        "U+fed2", #Final
        "U+fed3", #Initial
        "U+fed4", #Medial
        true)
    map[new_character.common_encoding] = new_character


    #Qaf
      new_character = ArabicCharacterInfo.new(
        "U+0642",	#Common
        "U+fed5", #Isolated
        "U+fed6", #Final
        "U+fed7", #Initial
        "U+fed8", #Medial
        true)
    map[new_character.common_encoding] = new_character


    #Kaf
      new_character = ArabicCharacterInfo.new(
        "U+0643",	#Common
        "U+fed9", #Isolated
        "U+feda", #Final
        "U+fedb", #Initial
        "U+fedc", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Lam
      new_character = ArabicCharacterInfo.new(
        "U+0644",	#Common
        "U+fedd", #Isolated
        "U+fede", #Final
        "U+fedf", #Initial
        "U+fee0", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Meem
      new_character = ArabicCharacterInfo.new(
        "U+0645",	#Common
        "U+fee1", #Isolated
        "U+fee2", #Final
        "U+fee3", #Initial
        "U+fee4", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Noon
      new_character = ArabicCharacterInfo.new(
        "U+0646",	#Common
        "U+fee5", #Isolated
        "U+fee6", #Final
        "U+fee7", #Initial
        "U+fee8", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Heh
      new_character = ArabicCharacterInfo.new(
        "U+0647",	#Common
        "U+fee9", #Isolated
        "U+feea", #Final
        "U+feeb", #Initial
        "U+feec", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Waw
      new_character = ArabicCharacterInfo.new(
        "U+0648",	#Common
        "U+feed", #Isolated
        "U+feee", #Final
        "U+feed", #Initial
        "U+feee", #Medial
        false)
    map[new_character.common_encoding] = new_character

    #Yeh
      new_character = ArabicCharacterInfo.new(
        "U+064a",	#Common
        "U+fef1", #Isolated
        "U+fef2", #Final
        "U+fef3", #Initial
        "U+fef4", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Hamza
      new_character = ArabicCharacterInfo.new(
        "U+0621",	#Common
        "U+fe80", #Isolated
        "U+fe80", #Final
        "U+fe80", #Initial
        "U+fe80", #Medial
        false)
    map[new_character.common_encoding] = new_character


    # Alef Madda
      new_character = ArabicCharacterInfo.new(
        "U+0622",	#Common
        "U+fe81", #Isolated
        "U+fe82", #Final
        "U+fe81", #Initial
        "U+fe82", #Medial
        false)
    map[new_character.common_encoding] = new_character

    # Alef Hamza Above
      new_character = ArabicCharacterInfo.new(
        "U+0623",	#Common
        "U+fe83", #Isolated
        "U+fe84", #Final
        "U+fe83", #Initial
        "U+fe84", #Medial
        false)
    map[new_character.common_encoding] = new_character

    # Waw Hamza
      new_character = ArabicCharacterInfo.new(
        "U+0624",	#Common
        "U+fe85", #Isolated
        "U+fe86", #Final
        "U+fe85", #Initial
        "U+fe86", #Medial
        false)
    map[new_character.common_encoding] = new_character

    # Alef Hamza Below
      new_character = ArabicCharacterInfo.new(
        "U+0625",	#Common
        "U+fe87", #Isolated
        "U+fe88", #Final
        "U+fe87", #Initial
        "U+fe88", #Medial
        false)
    map[new_character.common_encoding] = new_character

    # Yeh Hamza
      new_character = ArabicCharacterInfo.new(
        "U+0626",	#Common
        "U+fe89", #Isolated
        "U+fe8a", #Final
        "U+fe8b", #Initial
        "U+fe8c", #Medial
        true)
      map[new_character.common_encoding] = new_character

    # Teh Marbuta
      new_character = ArabicCharacterInfo.new(
        "U+0629",	#Common
        "U+fe93", #Isolated
        "U+fe94", #Final
        "U+fe93", #Initial
        "U+fe94", #Medial
        false)
    map[new_character.common_encoding] = new_character

    # Tatweel
      new_character = ArabicCharacterInfo.new(
        "U+0640",	#Common
        "U+0640", #Isolated
        "U+0640", #Final
        "U+0640", #Initial
        "U+0640", #Medial
        true)
    map[new_character.common_encoding] = new_character

    # Alef Layyena
      new_character = ArabicCharacterInfo.new(
        "U+0649",	#Common
        "U+feef", #Isolated
        "U+fef0", #Final
        "U+feef", #Initial
        "U+fef0", #Medial
        false)
    map[new_character.common_encoding] = new_character

    @@arabic_characters_map = map

    return @@arabic_characters_map
  end

end



class String



  def determine_format(before_c, after_c)

    charmap = ArabicCharacterInfo.get_arabic_characters_map

    previous_is_character = charmap.key?(before_c)
    after_is_character = charmap.key?(after_c)

    if !after_is_character and (!previous_is_character or !charmap[before_c].is_connected)
      return CharacterFormat::Isolated
    end

    if !after_is_character
        return CharacterFormat::Final
    end

    if !previous_is_character or !charmap[before_c].is_connected
        return CharacterFormat::Initial
    end

    return CharacterFormat::Medial

  end

    def get_letter_in_format(format, c)
      charmap = ArabicCharacterInfo.get_arabic_characters_map
      character = charmap[c]
      if character.nil?
        return c
      end
      return character.format_encodings[format]
    end

    def fix_word

        is_arabic = false
        connected_arabic = ""
        previous_letter = ''
        before_previous_letter = ''

        self.each_utf8_char {|c|

          if previous_letter != ''

            format = determine_format(before_previous_letter, c)
            fixed_character = get_letter_in_format(format, previous_letter)
            connected_arabic += fixed_character
            if fixed_character != previous_letter
              is_arabic = true
            end

          end

          before_previous_letter = previous_letter
          previous_letter = c
      }

        if previous_letter != ''

            format = determine_format(before_previous_letter, '')
            fixed_character = get_letter_in_format(format, previous_letter)
            connected_arabic += fixed_character
            if fixed_character != previous_letter
              is_arabic = true
            end
          end

      if is_arabic
        return connected_arabic.reverse_utf8!
      else
        return connected_arabic
      end
    end

    def fix_arabic_glyphs

      words = self.split(" ")
      result = ""

      #assuming default is rtl
      ltr_buffer = ""

      words.each { |word|
          fixed_word = word.fix_word
          if(fixed_word == word)
            #a non-arabic word (ltr) so we will buffer to see if more ltr words will follow
            ltr_buffer = ltr_buffer + " " + fixed_word
          else
            if(ltr_buffer.empty?)
              result = fixed_word + " " + result
            else
              result = ltr_buffer + " " + result
              result = fixed_word + " " + result
              ltr_buffer = ""
            end
          end
      }

      if(!(ltr_buffer.empty?))
        result = ltr_buffer + " " + result
      end

      return result
    end
end
