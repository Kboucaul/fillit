# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kboucaul <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/12/12 13:36:39 by kboucaul          #+#    #+#              #
#    Updated: 2019/06/03 14:02:03 by kboucaul         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		=		fillit

SRCS		=		main.c				\
					check_functions.c	\
					free_ressources.c	\
					alloc_ressources.c	\
					solve.c				\
					get_my_file.c

OBJS		=		$(SRCS:.c=.o)

CC			=		gcc -g

CFLAGS		+=		-Wall -Wextra -Werror -I . -I ./libft

LIB			=		-L./libft -lft

RM			=		rm -f

CLEAN		=		clean

all			:		$(NAME)

$(NAME)		:		$(OBJS)
					make -C ./libft/
					$(CC) -o $(NAME) $(OBJS) $(LIB)

clean		:		
					$(RM) $(OBJS)
					make clean -C ./libft

fclean		:		clean
					$(RM) $(NAME)
					make fclean -C ./libft/

re			:		fclean	all
