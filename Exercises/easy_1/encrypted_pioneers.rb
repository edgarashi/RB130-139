# The following list contains the names of individuals
# who are pioneers in the field of computing or that
# have had a significant influence on the field.
# The names are in an encrypted form, though,
# using a simple (and incredibly weak) form of
# encryption called Rot13.

ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

ALPH = ('a'..'z').to_a

def rot13(char)
  indx = ALPH.index(char.downcase)
  length = ALPH.length
  if indx + 13 > length - 1
    indx -= 13
  else
    indx += 13
  end
  ALPH[indx]
end

def decode(name)
  arr = name.chars
  result = []
  arr.each_with_index do |char, index|
    if ALPH.include?(char.downcase)
      result << rot13(char)
    else
      result << char
    end
  end
  result.join.split.map! {|name| name.capitalize}.join(' ')
end

ENCRYPTED_PIONEERS.each {|name| p decode(name)}