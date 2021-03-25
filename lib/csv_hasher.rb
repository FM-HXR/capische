require 'csv'

module CsvHasher
  module Hasher
    def self.hasher(row_label, hash_list, count)
      hash = {}
      hash[:id] = count.to_i
      hash[:option] = row_label
      if hash[:option] != nil
        hash_list << hash
      end
    end
  end

  def self.get_hashes(list)
    csv = "#{Rails.root}/lib/collections.csv"
    cat_list = []
    error_list = [{id: 1, option: "This hash list doesn't exist."}]

    i = 1
    CSV.foreach(csv) do |row|
      if row != "category"
        Hasher.hasher(row, cat_list, i)
      end
      i += 1
    end

    # list == 'category' ? return cat_list : return error_list

    case list
    when 'category'
      return cat_list
    else
      return error_list
    end
  end
end