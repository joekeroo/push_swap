NAME = push_swap

CC = gcc

CFLAGS = -Wall -Wextra -Werror -I.
RM = rm -f

MAIN = push_swap.c
SRCS = push.c r_rotate.c rotate.c swap.c sort_array.c \
	   create_array.c check_number.c check_mulnumber.c \
	   sortfor3.c sortfor5.c sort_utils.c insertion_sort.c
OBJS = ${SRCS:.c=.o}

LIBFT_PATH = libft/
LIBFT = libft/libft.a

all: ${NAME}

${NAME}: ${OBJS} ${LIBFT}
	${CC} ${CFLAGS} -o ${NAME} ${MAIN} ${OBJS} ${LIBFT}

${LIBFT}:
	make re -C ${LIBFT_PATH}

clean:
	${RM} ${OBJS}
	make clean -C ${LIBFT_PATH}

fclean: clean
	${RM} ${NAME}
	make fclean -C ${LIBFT_PATH}

re: fclean all

.PHONY = all clean fclean re