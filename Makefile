# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ballain <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/29 11:14:27 by ballain           #+#    #+#              #
#    Updated: 2024/02/29 15:26:13 by ballain          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libft.a
SRCS		= \
	ft_atoi.c        ft_isalpha.c  ft_memchr.c    ft_putchar_fd.c  ft_strchr.c    ft_strlcpy.c  ft_strrchr.c	\
	ft_bzero.c       ft_isascii.c  ft_memcmp.c    ft_putendl_fd.c  ft_strdup.c    ft_strlen.c   ft_strtrim.c	\
	ft_calloc.c      ft_isdigit.c  ft_memcpy.c    ft_putnbr_fd.c   ft_striteri.c  ft_strmapi.c  ft_substr.c		\
	ft_isprint.c     ft_memmove.c  ft_putstr_fd.c ft_strjoin.c     ft_strncmp.c   ft_tolower.c  ft_isalnum.c	\
	ft_itoa.c        ft_memset.c   ft_split.c     ft_strlcat.c     ft_strnstr.c   ft_toupper.c	
SRCSBONUS	= \
	ft_lstnew_bonus.c	ft_lstadd_front_bonus.c	ft_lstsize_bonus.c	ft_lstlast_bonus.c \
	ft_lstadd_back_bonus.c	ft_lstdelone_bonus.c	ft_lstclear_bonus.c	ft_lstiter_bonus.c \
	ft_lstmap_bonus.c

OBJS		= $(SRCS:.c=.o)
OBJSBONUS	= $(SRCSBONUS:.c=.o)
VIMFILES	= ./.*.swp
CFLAGS		= -Wall -Wextra -Werror
RM		= rm -rf
CC		= cc

%.o		: %.c
				$(CC) $(CFLAGS) -o $@ -c $<

all 		: $(NAME)

$(NAME)		: $(OBJS)
				ar rc $(NAME) $^

bonus		: $(NAME) $(OBJSBONUS)
				ar rc $(NAME) $^

norme		:
				norminette

clean 		: 
				$(RM) $(OBJS) $(OBJSBONUS)

vimclean	:
				$(RM) $(VIMFILE)

fclean		: clean
				$(RM) $(NAME)

cleanall	: fclean vimclean
re			: fclean all
.PHONY		: fclean clean all bonus
