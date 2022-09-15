class PhoneBook
    def initialize
        @phonebook = [[],[],[]]
        @contacts = 0
    end
    
    def add(name, number, is_listed)
        s_arr = number.split(//)
        if(s_arr[3] == "-" and s_arr[7] == "-" and s_arr.length == 12)
            for i in 0..@contacts
                if(@phonebook[0][i] == name)
                    return false
                end
            end
            
            for i in 0..@contacts - 1
                if(@phonebook[1][i] == number and @phonebook[2][i] == true)
                    if(is_listed == true)
                        return false
                    end
                end
            end
            @phonebook[0].push(name)
            @phonebook[1].push(number)
            @phonebook[2].push(is_listed)
            @contacts += 1
            return true
        end
        return false
    end
    
    def lookup(name)
        for i in 0..@contacts - 1
            if(@phonebook[0][i] == name)
                if(@phonebook[2][i] == true)
                    return @phonebook[1][i]
                end
            end
        end
        return nil
    end

    def lookupByNum(number)
        for i in 0..@contacts - 1
            if(@phonebook[1][i] == number)
                if(@phonebook[2][i] == true)
                    return @phonebook[0][i]
                end
            end
        end
        return nil
    end

    def namesByAc(areacode)
        contact_index = []
        for i in 0..@contacts - 1
            if(areacode == @phonebook[1][i].to_i.to_s)
                contact_index.push(i)
            end
        end
        
        names = []
        for i in 0..contact_index.length - 1
            index = contact_index[i]
            names.push(@phonebook[0][index])
        end
        return names
    end
end

