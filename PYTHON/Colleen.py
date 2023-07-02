def something():
    x = 'def something():\n    x = %r\n    print(x %% x)\n\n# Self\n\ndef main():\n# Propagation\n    something()\n\nif __name__ == "__main__":\n    main()'
    print(x % x)

# Self

def main():
# Propagation
    something()

if __name__ == "__main__":
    main()
