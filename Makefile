# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ccharuel <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/10 19:53:41 by ccharuel          #+#    #+#              #
#    Updated: 2016/11/29 21:55:30 by ccharuel         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC =	ft_isalnum.c \
		ft_bzero.c \
		ft_isalpha.c \
		ft_isdigit.c \
		ft_isprint.c \
		ft_atoi.c \
		ft_stralloc.c \
		ft_itoa.c \
		ft_memalloc.c \
		ft_memccpy.c \
		ft_memcpy.c \
		ft_memchr.c \
		ft_memcmp.c \
		ft_memset.c \
		ft_memdel.c \
		ft_putchar.c \
		ft_putchar_fd.c \
		ft_putendl.c \
		ft_putendl_fd.c \
		ft_putnbr.c \
		ft_putnbr_fd.c \
		ft_putstr.c \
		ft_putstr_fd.c \
		ft_strcat.c \
		ft_strchr.c \
		ft_strclr.c \
		ft_strcmp.c \
		ft_memmove.c \
		ft_strdel.c \
		ft_strcpy.c \
		ft_striter.c \
		ft_strequ.c \
		ft_striteri.c \
		ft_strdup.c \
		ft_strlen.c \
		ft_strjoin.c \
		ft_strlcat.c \
		ft_strmap.c \
		ft_strncat.c \
		ft_strncmp.c \
		ft_strnequ.c \
		ft_strmapi.c \
		ft_strsplit.c \
		ft_strncpy.c \
		ft_strnew.c \
		ft_strrchr.c \
		ft_strnstr.c \
		ft_strstr.c \
		ft_strsub.c \
		ft_tolower.c \
		ft_toupper.c \
		ft_strtrim.c \
		ft_isascii.c \
		ft_lstnew.c \
		ft_lstdelone.c \
		ft_lstdel.c \
		ft_lstadd.c \
		ft_lstiter.c \
		ft_lstmap.c \

HEADER = include.

FLAG = -Wall -Wextra -Werror

OPTION = -c -I $(HEADER)

OBJ = $(SRC:%.c=%.o)

all : $(NAME)

$(NAME):
	gcc  $(FLAG) $(OPTION) $(SRC)
	ar rc $(NAME) $(OBJ)

clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean all
