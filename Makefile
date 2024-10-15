#------------- LIBFT -------------

LIBFT = libft

#------------- PRINTF -------------

NAME = libftprintf.a
INCLUDES = includes/
SRCS = src/ft_printf.c src/ft_prints_one.c src/ft_prints_two.c \
       src/utils.c
OBJ = $(SRCS:.c=.o)
CFLAGS = -Wall -Wextra -Werror

#------------- RULES -------------

all: $(NAME)

$(NAME): $(OBJ)
	@make -C $(LIBFT)
	@mv $(LIBFT)/$(LIBFT).a $@
	@ar rcs $@ $^

src/%.o: src/%.c
	@cc $(CFLAGS) -c $< -o $@ -I$(INCLUDES)

clean:
	@rm -f $(OBJ)
	@make clean -C $(LIBFT)

fclean: clean
	@rm -f $(NAME)
	@make fclean -C $(LIBFT)

re: fclean all

.PHONY: clean all fclean re
