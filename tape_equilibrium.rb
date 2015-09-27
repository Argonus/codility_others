def solution(a)
diff = [((a[0] - a[1..-1].inject(:+)).abs)]
    for i in 0..(a.length-2)
        left = a[0..i].inject(:+)
        right = a[(i+1)..(a.length-1)].inject(:+)
        diff << (left - right).abs
    end
    
    return diff.min
end

a = [3, 1, 2, 3, 4]

puts solution(a)