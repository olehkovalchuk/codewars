# link https://www.codewars.com/kata/slamming-lockers

def locker_run(lockers)
    result = []
    i = 1
    begin
        result.push(i * i)
        i +=1
    end while i * i <= lockers
    result
end

################### cheking ###################

# puts locker_run(10)