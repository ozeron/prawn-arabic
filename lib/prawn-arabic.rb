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
    @common_encoding = common
    @format_encodings = Hash.new
    @format_encodings[CharacterFormat::Isolated] = isolated
    @format_encodings[CharacterFormat::Initial] = initial
    @format_encodings[CharacterFormat::Medial] = medial
    @format_encodings[CharacterFormat::Final] = final
    @is_connected = is_connected
  end

  def ArabicCharacterInfo.get_arabic_characters_map

    if !@@arabic_characters_map.nil?
      return @@arabic_characters_map
    end

    map = Hash.new

      #Alef
      new_character = ArabicCharacterInfo.new(
        "\u0627",	#Common
        "\ufe8d", #Isolated
        "\ufe8e", #Final
        "\ufe8d", #Initial
        "\ufe8e", #Medial
        false)
    map[new_character.common_encoding] = new_character

    #Beh
      new_character = ArabicCharacterInfo.new(
        "\u0628",	#Common
        "\ufe8f", #Isolated
        "\ufe90", #Final
        "\ufe91", #Initial
        "\ufe92", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Teh
      new_character = ArabicCharacterInfo.new(
        "\u062a",	#Common
        "\ufe95", #Isolated
        "\ufe96", #Final
        "\ufe97", #Initial
        "\ufe98", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Theh
      new_character = ArabicCharacterInfo.new(
        "\u062b",	#Common
        "\ufe99", #Isolated
        "\ufe9a", #Final
        "\ufe9b", #Initial
        "\ufe9c", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Jeem
      new_character = ArabicCharacterInfo.new(
        "\u062c",	#Common
        "\ufe9d", #Isolated
        "\ufe9e", #Final
        "\ufe9f", #Initial
        "\ufea0", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #7ah
      new_character = ArabicCharacterInfo.new(
        "\u062d",	#Common
        "\ufea1", #Isolated
        "\ufea2", #Final
        "\ufea3", #Initial
        "\ufea4", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #7'ah
      new_character = ArabicCharacterInfo.new(
        "\u062e",	#Common
        "\ufea5", #Isolated
        "\ufea6", #Final
        "\ufea7", #Initial
        "\ufea8", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Dal
      new_character = ArabicCharacterInfo.new(
        "\u062f",	#Common
        "\ufea9", #Isolated
        "\ufeaa", #Final
        "\ufea9", #Initial
        "\ufeaa", #Medial
        false)
    map[new_character.common_encoding] = new_character

    #Thal
      new_character = ArabicCharacterInfo.new(
        "\u0630",	#Common
        "\ufeab", #Isolated
        "\ufeac", #Final
        "\ufeab", #Initial
        "\ufeac", #Medial
        false)
    map[new_character.common_encoding] = new_character

    #Rah
      new_character = ArabicCharacterInfo.new(
        "\u0631",	#Common
        "\ufead", #Isolated
        "\ufeae", #Final
        "\ufead", #Initial
        "\ufeae", #Medial
        false)
    map[new_character.common_encoding] = new_character

    #Zein
      new_character = ArabicCharacterInfo.new(
        "\u0632",	#Common
        "\ufeaf", #Isolated
        "\ufeb0", #Final
        "\ufeaf", #Initial
        "\ufeb0", #Medial
        false)
    map[new_character.common_encoding] = new_character

    #Seen
      new_character = ArabicCharacterInfo.new(
        "\u0633",	#Common
        "\ufeb1", #Isolated
        "\ufeb2", #Final
        "\ufeb3", #Initial
        "\ufeb4", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Sheen
      new_character = ArabicCharacterInfo.new(
        "\u0634",	#Common
        "\ufeb5", #Isolated
        "\ufeb6", #Final
        "\ufeb7", #Initial
        "\ufeb8", #Medial
        true)
    map[new_character.common_encoding] = new_character


    #Sad
      new_character = ArabicCharacterInfo.new(
        "\u0635",	#Common
        "\ufeb9", #Isolated
        "\ufeba", #Final
        "\ufebb", #Initial
        "\ufebc", #Medial
        true)
    map[new_character.common_encoding] = new_character


    #Dad
      new_character = ArabicCharacterInfo.new(
        "\u0636",	#Common
        "\ufebd", #Isolated
        "\ufebe", #Final
        "\ufebf", #Initial
        "\ufec0", #Medial
        true)
    map[new_character.common_encoding] = new_character


    #Tah
      new_character = ArabicCharacterInfo.new(
        "\u0637",	#Common
        "\ufec1", #Isolated
        "\ufec2", #Final
        "\ufec3", #Initial
        "\ufec4", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Thah
      new_character = ArabicCharacterInfo.new(
        "\u0638",	#Common
        "\ufec5", #Isolated
        "\ufec6", #Final
        "\ufec7", #Initial
        "\ufec8", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #3ein
      new_character = ArabicCharacterInfo.new(
        "\u0639",	#Common
        "\ufec9", #Isolated
        "\ufeca", #Final
        "\ufecb", #Initial
        "\ufecc", #Medial
        true)
    map[new_character.common_encoding] = new_character


    #3'ein
      new_character = ArabicCharacterInfo.new(
        "\u063a",	#Common
        "\ufecd", #Isolated
        "\ufece", #Final
        "\ufecf", #Initial
        "\ufed0", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Feh
      new_character = ArabicCharacterInfo.new(
        "\u0641",	#Common
        "\ufed1", #Isolated
        "\ufed2", #Final
        "\ufed3", #Initial
        "\ufed4", #Medial
        true)
    map[new_character.common_encoding] = new_character


    #Qaf
      new_character = ArabicCharacterInfo.new(
        "\u0642",	#Common
        "\ufed5", #Isolated
        "\ufed6", #Final
        "\ufed7", #Initial
        "\ufed8", #Medial
        true)
    map[new_character.common_encoding] = new_character


    #Kaf
      new_character = ArabicCharacterInfo.new(
        "\u0643",	#Common
        "\ufed9", #Isolated
        "\ufeda", #Final
        "\ufedb", #Initial
        "\ufedc", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Lam
      new_character = ArabicCharacterInfo.new(
        "\u0644",	#Common
        "\ufedd", #Isolated
        "\ufede", #Final
        "\ufedf", #Initial
        "\ufee0", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Meem
      new_character = ArabicCharacterInfo.new(
        "\u0645",	#Common
        "\ufee1", #Isolated
        "\ufee2", #Final
        "\ufee3", #Initial
        "\ufee4", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Noon
      new_character = ArabicCharacterInfo.new(
        "\u0646",	#Common
        "\ufee5", #Isolated
        "\ufee6", #Final
        "\ufee7", #Initial
        "\ufee8", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Heh
      new_character = ArabicCharacterInfo.new(
        "\u0647",	#Common
        "\ufee9", #Isolated
        "\ufeea", #Final
        "\ufeeb", #Initial
        "\ufeec", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Waw
      new_character = ArabicCharacterInfo.new(
        "\u0648",	#Common
        "\ufeed", #Isolated
        "\ufeee", #Final
        "\ufeed", #Initial
        "\ufeee", #Medial
        false)
    map[new_character.common_encoding] = new_character

    #Yeh
      new_character = ArabicCharacterInfo.new(
        "\u064a",	#Common
        "\ufef1", #Isolated
        "\ufef2", #Final
        "\ufef3", #Initial
        "\ufef4", #Medial
        true)
    map[new_character.common_encoding] = new_character

    #Hamza
      new_character = ArabicCharacterInfo.new(
        "\u0621",	#Common
        "\ufe80", #Isolated
        "\ufe80", #Final
        "\ufe80", #Initial
        "\ufe80", #Medial
        false)
    map[new_character.common_encoding] = new_character


    # Alef Madda
      new_character = ArabicCharacterInfo.new(
        "\u0622",	#Common
        "\ufe81", #Isolated
        "\ufe82", #Final
        "\ufe81", #Initial
        "\ufe82", #Medial
        false)
    map[new_character.common_encoding] = new_character

    # Alef Hamza Above
      new_character = ArabicCharacterInfo.new(
        "\u0623",	#Common
        "\ufe83", #Isolated
        "\ufe84", #Final
        "\ufe83", #Initial
        "\ufe84", #Medial
        false)
    map[new_character.common_encoding] = new_character

    # Waw Hamza
      new_character = ArabicCharacterInfo.new(
        "\u0624",	#Common
        "\ufe85", #Isolated
        "\ufe86", #Final
        "\ufe85", #Initial
        "\ufe86", #Medial
        false)
    map[new_character.common_encoding] = new_character

    # Alef Hamza Below
      new_character = ArabicCharacterInfo.new(
        "\u0625",	#Common
        "\ufe87", #Isolated
        "\ufe88", #Final
        "\ufe87", #Initial
        "\ufe88", #Medial
        false)
    map[new_character.common_encoding] = new_character

    # Yeh Hamza
      new_character = ArabicCharacterInfo.new(
        "\u0626",	#Common
        "\ufe89", #Isolated
        "\ufe8a", #Final
        "\ufe8b", #Initial
        "\ufe8c", #Medial
        true)
      map[new_character.common_encoding] = new_character

    # Teh Marbuta
      new_character = ArabicCharacterInfo.new(
        "\u0629",	#Common
        "\ufe93", #Isolated
        "\ufe94", #Final
        "\ufe93", #Initial
        "\ufe94", #Medial
        false)
    map[new_character.common_encoding] = new_character

    # Tatweel
      new_character = ArabicCharacterInfo.new(
        "\u0640",	#Common
        "\u0640", #Isolated
        "\u0640", #Final
        "\u0640", #Initial
        "\u0640", #Medial
        true)
    map[new_character.common_encoding] = new_character

    # Alef Layyena
      new_character = ArabicCharacterInfo.new(
        "\u0649",	#Common
        "\ufeef", #Isolated
        "\ufef0", #Final
        "\ufeef", #Initial
        "\ufef0", #Medial
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

        self.chars {|c|

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
        return connected_arabic.reverse
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
