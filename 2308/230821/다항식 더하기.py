# https://school.programmers.co.kr/learn/courses/30/lessons/120863

def solution(polynomial):

    coeff, const = 0, 0
    result = ''

    words = polynomial.split(' + ')

    for word in words:
        if 'x' in word:
            temp = word.split('x')[0]
            coeff += int(temp) if temp.isdigit() else 1
        elif word.isdigit():
            const += int(word)

    if coeff == 1:
        result += 'x'
    elif coeff > 1:
        result += f'{coeff}x'

    if const >= 1 and coeff == 0:
        result = f'{const}'
    elif const >= 1 and coeff >= 1:
        result += f' + {const}'

    return result
