# ft_printf Project

This project is a custom implementation of the `printf` function from the C standard library using variadic arguments.

It supports the following formats:
- `%c`: Character
- `%s`: String of characters
- `%p`: Pointer
- `%d`: Negative/positive integer
- `%i`: Integer
- `%u`: Unsigned integer
- `%x`: Hexadecimal integer (lowercase)
- `%X`: Hexadecimal integer (uppercase)
- `%%`: Percentage

## Project Structure

The project is organized into the following folders and files:

- `includes/`: Contains the header files.
  - `ft_printf.h`: Function declarations and macros used in the project.
- `src/`: Contains the source files for the `ft_printf` implementation.
  - `ft_printf.c`: Main implementation of the `ft_printf` function.
  - `ft_prints_one.c`: Auxiliary functions for printing characters and strings.
  - `ft_prints_two.c`: Auxiliary functions for printing hexadecimal numbers and pointers.
  - `utils.c`: Utility functions used in the project.

- `libft/`: Contains the implementation of the `libft` library.

## Main Functions

#####  `int ft_printf(char const *format, ...);`

This is the project's main function, which processes the input string and identifies the `%` format specifiers.

#####  `int ft_choose(va_list args, char format);`

This function selects the appropriate printing function based on the format specifier.

### ft_prints_one.c

- `void ft_print_char(int c)`
  - Prints a single character to the standard output.

- `int ft_print_str(char *str)`
  - Prints a string of characters.
  - Handles `NULL` strings.
  - Returns the number of characters printed.

- `int ft_print_int(int nbr)`
  - Prints an integer.
  - Handles overflow.
  - Returns the number of characters printed.

- `int ft_print_float(int nbr)`
  - Prints a signed number.
  - Handles overflow.
  - Returns the number of characters printed.

- `int ft_print_unsig_int(unsigned int n)`
  - Prints an `unsigned` integer (a larger number).
  - Returns the number of characters printed.

### ft_prints_two.c

- `int ft_print_hex(unsigned int n, char *word)`
  - Prints a number in hexadecimal format, using the letters from the `word` parameter.
  - Returns the number of characters printed.

- `int ft_print_pointer(unsigned long long pointer)`
  - Prints a pointer in hexadecimal format.
  - Returns the number of characters printed.

### utils.c

- `int ft_putpointer(unsigned long long pointer)`
  - Auxiliary function to print a pointer in hexadecimal format.
  - Returns the number of characters printed.

- `int ft_puthex(unsigned int nbr, char *base)`
  - Auxiliary function to print a number in hexadecimal format.
  - Returns the number of characters printed.

- `void do_baseh(unsigned int nbr, unsigned int nbase, char *base, int *c)`
  - Recursive function to convert and print a number in a specific base.
  - Updates the character count pointer.

## Compilation

To compile the project, run the following command:

```sh
make
```

To clean the object files generated during compilation, run:

```sh
make clean
```

To perform a full cleanup, including the generated binary file, run:

```sh
make fclean
```

To recompile the project, run:

```sh
make re
```
This will compile both the `libft` library and the `ft_printf` implementation, generating the `libftprintf.a` file.

## Usage

To use the `ft_printf` function in your own project, include the `ft_printf.h` header file and link the `libftprintf.a` library during compilation.

```c
#include "ft_printf.h"

int main() {
    ft_printf("Hola, %s!\n", "mundo");
    return 0;
}
```

## Autor

This project was developed by [apaz-pri](mailto:apaz-pri@student.42madrid.com).
