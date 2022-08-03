# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mndir <mndir@student.42.fr>                +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/08/03 16:49:00 by mndir             #+#    #+#              #
#    Updated: 2022/08/03 17:32:32 by mndir            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = main.c
LIBX_DIR = minilibx
LIBX = libmlx.a
FRAMEWORK = -L $(LIBX_DIR) -Imlx -framework OpenGL -framework AppKit
SRCS =	main.c \
OBJS = $(SRCS:%c=%o)
CC = gcc
CFLAGS = -Wall-Wextra-Werror -Ofast 

%.0 : %.C 
	$(CC) -Wall-Wextra-Werror -Iminilibx -c $< -o $@ 

$(NAME) : $(OBJS) 
	@$(CC) $(CFLAGS) $(OBJS) $(FRAMEWORK) -o $(NAME) 
all : $(NAME)

rm :
	rm -f  $(NAME)
