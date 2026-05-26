
NAME	= libasm.a

SRCS	= src/ft_strlen.s

CC 		= nasm

CFLAGS	= -Wextra -Wall -Werror 

OBJS 	= $(SRCS:.c=.o)

all:${NAME}

%.o : %.c ${HEADERS} Makefile
	${CC} ${CFLAGS} -c $< -o $@

${NAME}: ${OBJS}
	${CC} $(CFLAGS) ${OBJS} -o ${NAME}

clean:
	rm -f ${OBJS}

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: clean re