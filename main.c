#include <stdio.h>
#include "wordlib.h"
#include <stdlib.h>
#include <string.h>
#include "shell.h"
#include "webHelper.h"
#include "stack.h"
#include "list.h"



int main() {
    char* program1 = "36 0 IF 36 0 IF EMIT ELSE . THEN EMIT ELSE 36 0 IF . ELSE EMIT THEN . THEN"; //works
    char* program2 = "VARIABLE X 36 X ! X @ EMIT"; //works
    char* program3 = "36 1 IF EMIT ELSE . THEN"; //works
    char* program4 = "1 2 + 1 + 15 - 3 + -5 + . 10 33 100 108 114 111 87 32 44 111 108 108 101 72 10 EMIT EMIT EMIT EMIT EMIT EMIT EMIT EMIT EMIT EMIT EMIT EMIT EMIT EMIT EMIT"; //works
    char* program5 = "VARIABLE X 0 X ! X @ 4 < WHILE X @ 1 + X ! X @ . X @ 4 < 10 EMIT ENDWHILE"; //works
    char* program6 = "36 -4 -4 <= IF EMIT ELSE . THEN"; //works with all conditionals and all comparators
    char* program7 = "VARIABLE Y 0 Y ! VARIABLE X 0 X ! X @ 4 < WHILE 0 Y ! X @ 1 + X ! X @ . Y @ 2 < WHILE Y @ 1 + Y ! Y @ . Y @ 2 < ENDWHILE X @ 4 < ENDWHILE"; //works
    char* program8 = "VARIABLE Y 36 Y ! VARIABLE X 37 X ! Y @ EMIT X @ EMIT"; //works
    char* program9 = ": INCREMENTVAR DUP @ 1 + SWAP ! ; VARIABLE X 7 X ! X @ . 10 EMIT X INCREMENTVAR X @ ."; //works
    char* program10 = ": CR 10 EMIT ; : SPACE 32 EMIT ; : FIRSTN DUP 0 OVER 0 > WHILE DUP . CR 1 + OVER OVER > ENDWHILE ; 5 FIRSTN"; //works
    char* program11 = "1 2 3 4 5 6 7 8 9 DEPTH ."; //works
    context_t* myContext = malloc(sizeof(context_t));
    char* program_from_console;
    char buf[2048];
    int c;
    int len;
    /*
    for (int i = 0; i < 512; i++) {
        c = getc(stdin);
        if (c == EOF || i == 512) {
            len = i;
            break;
        }
        buf[i] = c;
    }
    */
    setContext("__PROGRAM__\n20 FIRSTN\n__DATA__\n8\n3\n2\n4\n9\n__VARS__\n(x,2)\n(bryan,3)\n(y,1)\n(a,9)\n(Colin,9)\n__USERDEFINED__\n: CR 10 EMIT ;\n: SPACE 32 EMIT ;\n: FIRSTN DUP 0 OVER 0 > WHILE DUP . CR 1 + OVER OVER > ENDWHILE POP POP POP ;\n", myContext);
    //program_from_console = buf;
    //init(program_from_console, myContext);
    int branch = 1;
    if (branch) {
        int j = 0;
        while (j != -1) {
            j = execute(myContext);
        }
        dumpContext(myContext);
    }
    else {
        shell_t* myShell = malloc(sizeof(shell_t));
        initShell(myShell);
        int m = 0;
        while (m != -1) {
            getLine(myShell);
            m = shellExecute((myShell));
            clearState(myShell);
        }
    }
    return 0;
}


/*
int main() { //testing for DATA
    context_t* my_context = malloc(sizeof(context_t));
    init("", my_context);
    setContext("8\n3\n2\n4\n9\n", my_context);
    //printf("%d", my_context->stack->size);
    long int x = 0;
    for (int i = 0; i < 5; i++) {
        x = popLong(my_context->stack);
        printf("%d", x);
    }
    //x = (my_context->stack->top->data).val;
    return 0;
}

int main() { //testing for VARS
    context_t* my_context = malloc(sizeof(context_t));
    init("", my_context);
    setContext("(x,2)\n(bryan,3)\n(y,1)\n(a,9)\n(Colin,9)\n", my_context);


    long int* x1;
    long int* x2;
    long int* x3;
    long int* x4;
    long int* x5;

    x1 = find(my_context->globals, "x", 1);
    printf("%d\n", *x1);
    x2 = find(my_context->globals, "bryan", 5);
    printf("%d\n", *x2);
    x3 = find(my_context->globals, "y", 1);
    printf("%d\n", *x3);
    x4 = find(my_context->globals, "a", 1);
    printf("%d\n", *x4);
    x5 = find(my_context->globals, "Colin", 5);
    printf("%d\n", *x5);
    return 0;
}


int main() { //testing for VARS
    context_t* my_context = malloc(sizeof(context_t));
    init("", my_context);

    setContext("(x,2)\n(bryan,3)\n(y,1)\n(a,9)\n(Colin,9)\n", my_context);
    dumpVars(my_context->globals);
    return 0;
}


int main() { //testing for USERDEFINED
    context_t* my_context = malloc(sizeof(context_t));
    init("", my_context);

    setContext("__DATA__\n8\n3\n2\n4\n9\n__VARS__\n(x,2)\n(bryan,3)\n(y,1)\n(a,9)\n(Colin,9)\n__USERDEFINED__\n: CR 10 EMIT ;\n: SPACE 32 EMIT ;\n: FIRSTN DUP 0 OVER 0 > WHILE DUP . CR 1 + OVER OVER > ENDWHILE ;\n", my_context);

    dumpStack(my_context->stack);
    dumpVars(my_context->globals);
    dumpFunc(my_context->customWords);
    return 0;
}
*/