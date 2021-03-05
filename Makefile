NAME =

FLAGS = -Wall -Wextra -Werror
INCLUDES = -I includes/ -I includes/includes_SDL2/

LIB_DIR = libs/
LIBRARIES = $(LIB_DIR)libSDL2.dylib $(LIB_DIR)libSDL2_ttf.dylib $(LIB_DIR)libSDL2_image.dylib
STATIC_LIB = -L -l $(LIB_DIR)libSDLX.a $(LIB_DIR)libMT.a 

INPUT_DIR = input/
SRCS_DIR = srcs/

BIN_DIR = bin/

SRCS_NAMES =			\
	main 				\

C_FILES =				\
	$(SRCS_NAMES) 		\

SRCS = $(addsuffix .c, $(C_FILES))
OBJS = $(addprefix $(BIN_DIR), $(SRCS:.c=.o))

all: $(NAME)

$(NAME): $(BIN_DIR) $(OBJS)
	gcc $(FLAGS) $(INCLUDES) -o $(NAME) $(SRCS) $(LIBRARIES) -L -l $(STATIC_LIB)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(BIN_DIR)%.o: %.c
	mkdir -p $(BIN_DIR)$(dir $<)
	gcc $(FLAGS) $(INCLUDES) -c $< -o $@

run: re clean
	./$(NAME)

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all