def hq9p(program):
    accumulator = 0
    output = ""

    for instruction in program:
        if instruction == 'H':
            output += "Hello, World!"
        elif instruction == 'Q':
            output += program
        elif instruction == '9':
            output += str(accumulator)
        elif instruction == '+':
            accumulator += 1

    return output

# Exemple d'utilisation
program = input("Enter HQ9+ prog : ")
output = hq9p(program)
print(output)
