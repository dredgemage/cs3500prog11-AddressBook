#include "nxt41720AddressBook.h"

int save_entries() {
	
	//TODO comment code
	return 0;
}

int read_file() {
	
	FILE *source;
	char temp[32];
	
	//Open the file
	source = fopen("addressBook.txt", "r");
	
	//Prepare the linked list
	EntryL *root = malloc(sizeof(EntryL));
	root->next = 0;
	fgets(root->data.name, 32, source);
	EntryL *currEntry = root;
	
	
	while (fscanf(source, "%s", temp) != EOF) {
		fgets(currEntry->data.name, 32, source);
		fgets(temp, 11, source);
		currEntry->data.telephone = atoi(temp);
		fgets(currEntry->data.address, 32, source);
	}
	
	return 0;
}