# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: apaz-pri <apaz-pri@student.42madrid.c      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/02 18:37:45 by apaz-pri          #+#    #+#              #
#    Updated: 2024/10/16 18:27:24 by apaz-pri         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
INCLUDES = .
SRCS = ft_atoi.c ft_bzero.c ft_calloc.c ft_isalnum.c \
       ft_isalpha.c ft_isascii.c ft_isdigit.c \
       ft_isprint.c ft_itoa.c ft_memcmp.c \
       ft_memcpy.c ft_memchr.c ft_memmove.c ft_memset.c \
       ft_split.c ft_strchr.c ft_strdup.c ft_strjoin.c \
       ft_strlcat.c ft_strlcpy.c ft_strlen.c ft_strncmp.c \
       ft_strnstr.c ft_strtrim.c ft_strrchr.c \
       ft_substr.c ft_tolower.c ft_toupper.c \
       ft_strmapi.c ft_striteri.c ft_putchar_fd.c \
       ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c
OBJ = $(SRCS:.c=.o) 
CFLAGS = -Wall -Wextra -Werror

.PHONY: clean all fclean re

all: $(NAME)

%.o: %.c
	@cc $(CFLAGS) -c $< -o $@ -I$(INCLUDES)

$(NAME): $(OBJ)
	@ar rcs $@ $^

clean:
	@rm -f $(OBJ)

fclean: clean
	@rm -f $(NAME)

re: fclean all
