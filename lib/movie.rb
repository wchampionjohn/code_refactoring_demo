class RegularPrice
  def charge(days_rented)
    result = 2
    result += (days_rented - 2) * 1.5 if days_rented > 2
  end
end

class NewReleasePrice
  def charge(days_rented)
    result = 0
    result += days_rented * 3
  end
end

class ChildrensPrice
  def charge(days_rented)
    result = 1.5
    result += (days_rented - 3) * 1.5 if days_rented > 3
  end
end

# --------------------------------

class Movie
  REGULAR     = 0     # 普通片
  NEW_RELEASE = 1     # 新片
  CHILDRENS   = 2     # 兒童片

  attr_reader :title
  attr_reader :price_code

  def initialize(title, price_code)
    @title = title
    self.price_code = price_code
  end

  def price_code=(new_value)
    @price_code = new_value
    @price = case price_code
             when REGULAR; RegularPrice.new
             when NEW_RELEASE; NewReleasePrice.new
             when CHILDRENS; ChildrensPrice.new
             end
  end

  def charge(days_rented)
    @price.charge(days_rented)
  end

  def frequent_renter_points(days_rented)
    # 如果是新片而且租超過 1 天，另外加 1 點
    (price_code == Movie::NEW_RELEASE && days_rented > 1) ? 2 : 1
  end

end

