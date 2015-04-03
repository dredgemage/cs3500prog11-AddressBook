
#include <nxt41720AddressBook.h>

int main(int argc, char **argv) {
	
	int entryCount = 0;
	char command[7];
	char commandArg[33];
	
	//read entries from file into dynamically allocated memory
	read_file();
	
	printf("Welcome to Nikola T's telephone book!\n");
	while (1) {
		//Provide menu of commands
		printf("\nCurrent number of entries: %i\n", entryCount);
		printf("Commands: add, search, delete, exit\n: ");
		
		//accept command
		memset(command, 0, 7);
		scanf("%s", command);
		printf("Read:%s:\n", command);
		
		//call relevant function
		if (!strcmp(command, "add")) {
			//add case
			printf("add command!\n");
			scanf("%s", commandArg);
			printf("Read:%s:\n", commandArg);
		} else if (!strcmp(command, "search")) {
			int number = 0;
			
			//search case
			printf("search command!\nName or number: ");
			scanf("%s", commandArg);
			printf("Read1:%s:\n", commandArg);
			
			//Figure if it's a name search or a number search
			if (isdigit(commandArg[0]) > 0) {
				printf("Read2:%s:\n", commandArg);
				number = atoi(commandArg);
				printf("Read3:%s:\n", commandArg);
				search_number(number);
			} else {
				search_name(commandArg);
			}
		} else if (!strcmp(command, "delete")) {
			//delete case
			printf("delete command!\n");
			scanf("%s", commandArg);
			printf("Read:%s:\n", commandArg);
		} else if (!strcmp(command, "exit")) {
			return 0;
		} else {
			printf("something broke!\n");
		}
	}
}
