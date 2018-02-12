class HashBrown
  attr_reader(:key_array, :value_array)

  def initialize
    @key_array = []
    @value_array = []
  end

  def store (key, value)
    @key_array.push(key)
    @value_array.push(value)
    # binding.pry
  end

  def fetch (key)
    @value_array[@key_array.index(key)]
  end

  def has_key?(key)
    @key_array.include?(key)
  end

  def has_value?(value)
    @value_array.include?(value)
  end

  def length
    @key_array.length
  end

  def merge(hash)
    @key_array.concat(hash.keys)
    @value_array.concat(hash.values)
  end
end
