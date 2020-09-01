#include <stdio.h>
#include <string.h>

union floatUnion{
	float floatValue;
	char bytes[sizeof(float)];
};

union doubleUnion {
	float doubleValue;
	char bytes[sizeof(double)];
};

void floatToBinUnion(union floatUnion);
void doubleToBinUnion(union doubleUnion);

int main() {
	char type;

	printf("[F]loat or [D]ouble? ");
	scanf("%c", &type);

	if (type == 'F') {
		union floatUnion value;
		printf("Enter the number: ");
		scanf("%f", &value.floatValue);
		floatToBinUnion(value);
	}
	if (type == 'D') {
		union doubleUnion value;
		printf("Enter the number: ");
		scanf("%lf", &value.doubleValue);
		doubleToBinUnion(value);
	}
	getchar();
	getchar();
	return 0;
}

void floatToBinUnion(union floatUnion value) {
	int i, j, h;
	for (i = sizeof(float) - 1; i >= 0; i--) {
		// from most significant bit to least significant bit
		// flow from left to right
		for (j = 7; j >= 0; j--) {
			h = 1;
			h <<= j;
			if (h & value.bytes[i]) {
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

void doubleToBinUnion(union doubleUnion value) {
	int i, j, h;
	for (i = sizeof(double) - 1; i >= 0; i--) {
		// from most significant bit to least significant bit
		// flow from left to right
		for (j = 7; j >= 0; j--) {
			h = 1;
			h <<= j;
			if (h & value.bytes[i]) {
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