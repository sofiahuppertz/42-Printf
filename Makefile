# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: shuppert <shuppert@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/06/24 17:50:57 by shuppert          #+#    #+#              #
#    Updated: 2023/06/28 12:31:58 by shuppert         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a

SRC = ft_printf.c \
	check_format.c \
	display_adress.c \
	display_char.c \
	display_hexadecimals.c \
	display_integer.c \
	display_text.c \
	display_unsigned_integer.c \
	
OBJ = $(SRC:.c=.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror


all: $(NAME)

$(NAME): $(OBJ)
	ar rcs $(NAME) $(OBJ) 

%.o: %.c ft_printf.h
	$(CC) $(CFLAGS) -c $< -o $@ 

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME) $(OBJ)

re: fclean all

PHONY: all clean fclean re

