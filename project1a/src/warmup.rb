def fib(n)
    arr = []
    for i in 1..n
        arr.push(fib_rec(i))
    end
    return arr
end

def fib_rec(x)
    if(x == 0)
        #do nothing
    elsif(x == 1)
        return 0
    elsif(x == 3 or x == 2)
        return 1
    else
        return (fib_rec(x-1) + fib_rec(x-2))
    end
end

def isPalindrome(n)
    n2 = n.to_s.reverse.to_i
    if(n == n2)
        return true
    end
    return false
end

def nthmax(n, a)
    a2 = a.sort
    if(a2.length >= n)
        return a2[a2.length - n - 1]
    end
end

def freq(s)
    if(s.length == 0)
        return ""
    end
    letters = s.split(//)
    return letters.max_by {|i| letters.count(i)}
end
    
def zipHash(arr1, arr2)
    if(arr1.length == arr2.length)
        return Hash[arr1.zip(arr2)]
    end
    return nil
end
    
def hashToArray(hash)
    arr = []
    for i in 0..hash.length-1 do
        arr.push([hash.keys[i], hash.values[i]])
    end
    return arr
end

