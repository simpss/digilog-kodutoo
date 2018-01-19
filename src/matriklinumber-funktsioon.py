#code = 10128891
code = 135678

def get_hex_string(number):
    return hex(number)[2:]


def print_hex_value(number):
    print('hex value is: ', get_hex_string(number))


def print_student_code():
    print('calculating for student code: ', code)


def number_to_hex_lenght(number, needed_length):
    while (len(get_hex_string(number))) < needed_length:
        number *= 7
    return number


def replace_letters(number):
    hex_value = get_hex_string(number)
    spaced = " ".join(hex_value)

    replaced = spaced.replace('a', '10').replace('b', '11').replace('c', '12')\
        .replace('d', '13').replace('e', '14').replace('f', '15')

    res = set(replaced.split(" "))
    sorted_res = sorted(res, key=int)
    return sorted_res


print_student_code()
print_hex_value(code)
code = number_to_hex_lenght(code, 7)
print_hex_value(code)

truth_area = replace_letters(code)
print('1-de piirkond: ', truth_area)

code = number_to_hex_lenght(code, 9)
print_hex_value(code)
undefined_area = replace_letters(code)
undefined_area = sorted(set(undefined_area) - set(truth_area), key=int)
print('määramatuspiirkond: ', undefined_area)

undefined_and_truth_areas = truth_area + undefined_area
all = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '10', '11', '12', '13', '14', '15']
print('0-ide piirkond: ', sorted(set(all) - set(undefined_and_truth_areas), key=int))