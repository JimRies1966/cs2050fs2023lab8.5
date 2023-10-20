##############################################################################
# Makefile for Lab 8.5
# CMP_SC 2050
# Fall 2023
# By Jim Ries (RiesJ@missouri.edu)
##############################################################################
CC = gcc
CFLAGS = -Wall -Werror -c -g -std=c11 -I.
LDFLAGS = -lbaseball -L.

default: a.out

%.o : %.c 
	@echo Compiling $^ 
	@$(CC) $(CFLAGS) $^

a.out : lab8.5main.o lab8.5.o
	@echo Linking $@ 
	@$(CC) $^ $(LDFLAGS) -o $@

clean : 
	@rm -rf *.o
	@rm -rf a.out
	@echo All Clean!