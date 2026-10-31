def prefix_suffix_product(input_array)
  return [] if input_array.empty?

  prefix_products = [1]
  (input_array.length - 1).times do |i|
    prefix_products << prefix_products[i] * input_array[i]
  end

  suffix_products = [1]
  (input_array.length - 1).downto(1) do |i|
    suffix_products << input_array[i] * suffix_products.last
  end
  suffix_products.reverse!

  prefix_products.zip(suffix_products).map { |prefix, suffix| prefix * suffix }
end


# def prefix_suffix_product(input_array)
#   return [] if input_array.empty?
#   
#   prefix_products = [1]
#   (input_array.length - 1).times do |i|
#     prefix_products << prefix_products[i] * input_array[i]
#   end
#
#   suffix_product = 1
#   (prefix_products.length - 1).downto(0) do |i|
#     prefix_products[i] *= suffix_product
#     suffix_product *= input_array[i]
#   end
#   prefix_products
# end