class NewReleasePrice
  def frequent_renter_points(days_rented)
    # 如果租超過 1 天，另外加 1 點
    (days_rented > 1) ? 2 : 1
  end

  def charge(days_rented)
    result = 0
    result += days_rented * 3
  end
end
