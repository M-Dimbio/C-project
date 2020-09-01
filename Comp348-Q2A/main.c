#include <stdio.h>
#include <string.h>

void floatToBinPtrs(float);
void doubleToBinPtrs(double);

int main() {
	char type;

	printf("[F]loat or [D]ouble? ");
	scanf("%c", &type);

	if (type == 'F') {
		float floatValue;
		printf("Enter the number: ");
		scanf("%f", &floatValue);
		floatToBinPtrs(floatValue);
	}
	if (type == 'D') {
		double doubleValue;
		printf("Enter the number: ");
		scanf("%lf", &doubleValue);
		doubleToBinPtrs(doubleValue);
	}
	
	getchar();
	getchar();
	return 0;
}

void floatToBinPtrs(float f) {
	unsigned char* bytes = (unsigned char*)(void*)&f;

	int i, j, h;
	for (i = sizeof(float) - 1; i >= 0; i--) {
		// from most significant bit to least significant bit
		// flow from left to right
		for (j = 7; j >= 0; j--) {
			h = 1;
			h <<= j;
			if (h & bytes[i]) {
				printf("X");
			}
			else {
				printf("0");
			}
			if (j == 4)
				printf(" ");
		}
		printf(" ");
	}
	printf("\n");
}

void doubleToBinPtrs(double d) {
	unsigned char* bytes = (unsigned char*)(void*)&d;

	int i, j, h;
	for (i = sizeof(double) - 1; i >= 0; i--) {
		// from most significant bit to least significant bit
		// flow from left to right
		for (j = 7; j >= 0; j--) {
			h = 1;
			h <<= j;
			if (h & bytes[i]) {
				printf("X");
			}
			else {
				printf("0");
			}
			if (j == 4)
				printf(" ");
		}
		printf(" ");
	}
	printf("\n");
}