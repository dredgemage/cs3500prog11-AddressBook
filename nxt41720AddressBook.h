#ifndef NXT41720ADDRESSBOOK_H
#define NXT41720ADDRESSBOOK_H

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

struct entry {
	char name[32];
	int telephone;
	char address[32];
	};

typedef struct EntryL {
	struct entry data;
	struct EntryL *next;
	} EntryL;

extern EntryL *root;
extern EntryL *currEntryL;

//main.c
int main(int argc, char **argv);

//commands.c
int add_EntryL(char name[32], int tele, char address[32]);
EntryL search_name(char name[32]);
EntryL search_number(int tele);
int delete_EntryL(char name[32]);

//filefulction.c
int save_entries();
int read_file();

#endif