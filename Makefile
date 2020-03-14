# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: aamzil <aamzil@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/03/14 10:48:59 by aamzil            #+#    #+#              #
#    Updated: 2020/03/14 11:47:21 by aamzil           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libasm.a

NA = nasm

NFLAGS = -f macho64

SRC = ft_strlen.s		\
	ft_strcpy.s			\
	ft_strcmp.s			\
	ft_write.s			\
	ft_read.s			\
	ft_strdup.s			\


OBJ = $(SRC:.s=.o)

all: $(NAME)

$(NAME):
	$(NA) $(NFLAGS) ft_strlen.s
	$(NA) $(NFLAGS) ft_strcpy.s
	$(NA) $(NFLAGS) ft_strcmp.s
	$(NA) $(NFLAGS) ft_write.s
	$(NA) $(NFLAGS) ft_read.s
	$(NA) $(NFLAGS) ft_strdup.s
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all
