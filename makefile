
NAME = main
CC = g++ -std=c++11
INCLUDES = -Iinclude 
LINKER_FLAGS = -lstdc++ -lXt -lm -lGL -lGLU -lglfw3 -lX11 -lXxf86vm -lXrandr -lpthread -lXi -ldl -lXinerama -lXcursor -lGLEW
CFLAGS = $(INCLUDES) $(LINKER_FLAGS)
DEPS = include/*

INTERNAL_INCLUDES = $(NAME).cpp src/*
EXTERNAL_INCLUDES = 

all:  $(NAME)

# To check changes in headers
%.o: %.c $(DEPS)
	$(CC) -c -o $@ $< $(CFLAGS)


$(NAME): $(INTERNAL_INCLUDES) $(EXTERNAL_INCLUDES)
	$(CC) -Wall -o $(NAME) -DGL_GLEXT_PROTOTYPES $(INTERNAL_INCLUDES) $(CFLAGS) 

clean:
	rm $(NAME)

lovisa:
	cmatrix

run: 
	./$(NAME)


