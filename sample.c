#include <stdio.h>

#include "module.h"

void sample() {
	printf("name: %s\n", module_name());
	printf("desc: %s\n", module_description());
}
