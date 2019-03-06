# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: allefebv <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/01/31 18:19:37 by allefebv          #+#    #+#              #
#    Updated: 2019/03/06 16:44:44 by allefebv         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

PUSH_SWAP	=	push_swap
CHECKER		=	checker
LIB			=	./libft/libft.a
INCLUDES	=	./includes
CC			=	gcc
CFLAGS		=	-Wall -Wextra -I $(INCLUDES)
SDL			=	-F/Library/Frameworks -framework SDL2

SRC			=	srcs/create_stacks.c					\
				srcs/push_a.c							\
				srcs/push_b.c							\
				srcs/swap_a.c							\
				srcs/swap_b.c							\
				srcs/swap_ab.c							\
				srcs/rotate_a.c							\
				srcs/rotate_b.c							\
				srcs/rotate_ab.c						\
				srcs/rev_rotate_a.c						\
				srcs/rev_rotate_b.c						\
				srcs/rev_rotate_ab.c					\
				srcs/free_int_ptr.c

SRCCHECK	=	srcs/checker_dir/store_instructions.c	\
				srcs/checker_dir/main.c					\
				srcs/checker_dir/visual_checker.c		\
				srcs/checker_dir/classic_checker.c		\
				srcs/checker_dir/fptr_init_del.c		\
				srcs/checker_dir/rect_management.c		\
				srcs/checker_dir/rect_print.c			\
				srcs/checker_dir/rect_print_inv.c		\
				srcs/checker_dir/rect_print_inv2.c		\
				srcs/checker_dir/rect_print_success1.c	\
				srcs/checker_dir/rect_print_success2.c	\
				srcs/checker_dir/ft_clear_back.c		\
				srcs/checker_dir/sdl_init_del.c			\
				srcs/checker_dir/ft_sdl_end.c			\
				srcs/checker_dir/ft_visual_sort.c

SRCPUSHSW	=	srcs/push_swap_dir/main.c				\
				srcs/push_swap_dir/quick_sort.c			\
				srcs/push_swap_dir/median_finder.c		\
				srcs/push_swap_dir/partition_a.c		\
				srcs/push_swap_dir/partition_a_optis.c	\
				srcs/push_swap_dir/partition_b.c		\
				srcs/push_swap_dir/partition_b_optis.c	\
				srcs/push_swap_dir/kompressor.c			\
				srcs/push_swap_dir/ps_calls_a.c			\
				srcs/push_swap_dir/ps_calls_b.c			\
				srcs/push_swap_dir/ft_opti_3_a.c		\
				srcs/push_swap_dir/ft_opti_3_b.c

OBJ			=	$(SRC:.c=.o)
OBJCHECK	=	$(SRCCHECK:.c=.o)
OBJPUSHSW	=	$(SRCPUSHSW:.c=.o)

all: libft $(PUSH_SWAP) $(CHECKER)

$(PUSH_SWAP): $(OBJPUSHSW) $(OBJ)
	$(CC) $(CFLAGS) $(OBJPUSHSW) $(OBJ) -o $(PUSH_SWAP) $(LIB)
	echo "made push_swap"

$(CHECKER): $(OBJCHECK) $(OBJ)
	$(CC) $(CFLAGS) $(SDL) $(OBJCHECK) $(OBJ) -o $(CHECKER) $(LIB)
	echo "made checker"

libft:
	make -C libft -f libft.mk

clean:
	make -C libft -f libft.mk clean
	$(RM) $(OBJ)
	$(RM) $(OBJCHECK)
	$(RM) $(OBJPUSHSW)
	echo "cleaned project push_swap"

fclean: clean
	make -C libft -f libft.mk fclean
	$(RM) $(PUSH_SWAP)
	$(RM) $(CHECKER)
	echo "fcleaned project push_swap"

re: fclean all

.PHONY: 	all clean fclean re libft
.SILENT: 	$(OBJCHECK) $(OBJPUSHSW) $(OBJ) $(PUSH_SWAP) $(CHECKER) \
			all clean fclean re libft
