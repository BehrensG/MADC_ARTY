
def count_pulses (file_name) :
    p_count = 0
    n_count = 0
    with open(file_name, "r", encoding="utf-8") as file:
        table = [line.strip() for line in file]
        
    for line in table : 
        if int(line) == 1 : 
            p_count += 1
        else :
            n_count += 1

    print(p_count)
    print(n_count)
    return 7.0*(p_count - n_count)/(p_count + n_count)


print(count_pulses("PLC_1_N5V.txt"))

