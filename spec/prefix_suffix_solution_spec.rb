require_relative '../arrays-and-hashing/product-of-array-except-self/solution'
describe '#prefix_suffix_product' do
  it 'returns the product of all other elements' do
    expect(prefix_suffix_product([1, 2, 3, 4])).to eq([24, 12, 8, 6])
  end

  it 'handles negative numbers' do
    expect(prefix_suffix_product([-1, -2, -3])).to eq([6, 3, 2])
  end

  it 'handles a zero' do
    expect(prefix_suffix_product([1, 2, 0, 4])).to eq([0, 0, 8, 0])
  end

  it 'handles a single element' do
    expect(prefix_suffix_product([5])).to eq([1])
  end

  it 'returns an empty array for empty input' do
    expect(prefix_suffix_product([])).to eq([])
  end
end