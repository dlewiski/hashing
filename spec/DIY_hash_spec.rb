require 'rspec'
require 'DIY_hash'
require 'pry'

describe('HashBrown') do
  hash_brown = HashBrown.new()
  hash_brown.store("smothered", "cheese")
  describe('#store') do
    it("creates a new hash by storing values") do
      expect(hash_brown.key_array[-1]).to(eq("smothered"))
      expect(hash_brown.value_array[-1]).to(eq("cheese"))
    end
  end

  describe('#fetch') do
    it("creates a new hash by storing values") do
      expect(hash_brown.fetch("smothered")).to(eq("cheese"))
    end
  end

  describe('#has_key?') do
    it('checks for given key in hash') do
      expect(hash_brown.has_key?('smothered')).to(eq(true))
    end
  end

  describe('#has_value?') do
    it('checks for given value in hash') do
      expect(hash_brown.has_value?('cheese')).to(eq(true))
    end
  end

  describe('#length') do
    it('returns length of hash') do
      expect(hash_brown.length).to(eq(1))
    end
  end

  describe('#merge') do
    it('merges another hash into this hash') do
      other_hash = {'test_key' => 'oh heyyyy', 'number2' => 'baiii'}
      hash_brown.merge(other_hash)
      expect(hash_brown.length).to(eq(3))
      expect(hash_brown.fetch('number2')).to(eq('baiii'))
    end
  end
end
