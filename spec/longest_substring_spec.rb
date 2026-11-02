require_relative '../sliding_window/Longest_Substring/solution'

describe '#length_of_longest_substring' do
  it('handles abcabcbb') { expect(length_of_longest_substring('abcabcbb')).to eq(3) }
  it('handles bbbbb')    { expect(length_of_longest_substring('bbbbb')).to eq(1) }
  it('handles pwwkew')   { expect(length_of_longest_substring('pwwkew')).to eq(3) }
  it('handles empty')    { expect(length_of_longest_substring('')).to eq(0) }
  it('handles one char') { expect(length_of_longest_substring('a')).to eq(1) }
  it('handles abba')     { expect(length_of_longest_substring('abba')).to eq(2) }
  it('handles dvdf')     { expect(length_of_longest_substring('dvdf')).to eq(3) }
end