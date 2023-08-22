def solution(num_list):

    last_item = num_list[-1]
    prev_last_item = num_list[-2]

    if last_item > prev_last_item:
        num_list.append(last_item - prev_last_item)
    else:
        num_list.append(last_item * 2)

    return num_list
