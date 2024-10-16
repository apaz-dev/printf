#------------- LIBFT -------------

LIBFT = libft

#------------- PRINTF -------------

NAME = libftprintf.a
INCLUDES = includes/
SRCS = src/ft_printf.c src/ft_prints_one.c src/ft_prints_two.c \
       src/utils.c
OBJ = $(SRCS:.c=.o)
CFLAGS = -Wall -Wextra -Werror

#------------- COLORS -------------

Yellow=\033[0;103m
NC=\033[0m
On_IGreen=\033[0;102m

#------------- RULES -------------

all: $(NAME)

$(NAME): $(OBJ)
	@echo "${Yellow}Compilando el libft${NC}\n"
	@make -C $(LIBFT)
	@mv $(LIBFT)/$(LIBFT).a $@
	@echo "${On_IGreen}Libft compilado bien${NC}\n\n${Yellow}Empezando a compilar el printf${NC}\n"
	@ar rcs $@ $^
	@echo "${On_IGreen}printf Compilado con exito${NC}\n"

src/%.o: src/%.c
	@cc $(CFLAGS) -c $< -o $@ -I$(INCLUDES)

clean:
	@echo "${Yellow}Borrando los obj del printf${NC}\n"
	@rm -f $(OBJ)
	@echo "${Yellow}Borrando los obj del libft${NC}\n"
	@make clean -C $(LIBFT)

fclean: clean
	@echo "${Yellow}Haciendo un full clean${NC}\n"
	@rm -f $(NAME)
	@make fclean -C $(LIBFT)

re: fclean all

.PHONY: clean all fclean re
