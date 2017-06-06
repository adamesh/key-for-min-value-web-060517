# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  smallest_key = nil
  smallest_value = nil

  name_hash.each do |key, num|
    if num.class == Fixnum && smallest_value == nil
      smallest_value = num
      smallest_key = key
    elsif num < smallest_value
      smallest_value = num
      smallest_key = key
    end
  end
  smallest_key
end
