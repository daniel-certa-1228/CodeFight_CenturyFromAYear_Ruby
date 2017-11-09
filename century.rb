def centuryFromYear(year)
    if year == 0
        0
    elsif year.between?(1,100)
        1
    else
        year = (year/100) + 1
        return year
    end
end
    