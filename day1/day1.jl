#task: get the elf with the most amount of calories
#parse file
f = open("input.txt", "r")

#initialize empty dict
elves = Dict()
curr_elf = 1
#iterate over lines in dict
for line in eachline(f)
    #check whether line is empty --> start of new elf
    if line == ""
        curr_elf += 1
    else
        #check whether curr_elf in elves dict
        #if not, add to dictionary
        if !haskey(elves, curr_elf)
            elves[curr_elf] = parse(Int, line)
        #if in dict already, modify val in that dict by adding that line's val
        else
            elves[curr_elf] += parse(Int, line)
        end
    end
end

#get answer for part one: 69289 calories
findmax(elves)

#get answer for part two: find sum of top 3 elves dict values
sum(sort(collect(values(elves)), rev=true)[1:3])
