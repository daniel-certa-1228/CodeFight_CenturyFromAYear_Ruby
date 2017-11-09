def centuryFromYear(year)
    if year == 0
        0
    elsif year.between?(1,100)
        1
    else
        if year%100 == 0
            year = year/100
        else
        year = (year/100) + 1
        end
    end
end
    