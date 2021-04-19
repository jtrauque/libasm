# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jtrauque <jtrauque@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/11/16 11:44:52 by jtrauque          #+#    #+#              #
#    Updated: 2021/04/19 13:59:47 by jtrauque         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libasm.a

SRCS 		= ft_strlen.s ft_strcpy.s ft_strcmp.s ft_write.s ft_read.s

SRC_DIR   = srcs/
OBJ_DIR   = objs/

OBJS      = $(addprefix $(OBJ_DIR), ${SRCS:.s=.o})
DIR		  = $(sort $(dir $(OBJS)))

DEP       = ${OBJS:.o=.d}

NASM		= nasm -f elf64

RM		= rm -rf

MAKE	+= --no-print-directory

all :
	@${MAKE} -j ${NAME}
 
$(NAME):	${OBJS}
		@ar rcs libasm.a ${OBJS}
$(DIR) :    
	@mkdir -p $@

$(OBJ_DIR)%.o: $(SRC_DIR)%.s | $(DIR)
		@$(NASM) $< -o $@
test : all
		@gcc main.c libasm.a -lc
		@./a.out

clean :
		@${RM} ${OBJ_DIR}

fclean : 	clean
		@${RM} libasm.a

re : 	fclean 
		@${MAKE} all

-include ${OBJS:.o=.d} 

.PHONY : 	all bonus clean fclean re test
