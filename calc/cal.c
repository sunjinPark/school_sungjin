#include <stdio.h>

void arith(void);
int addition(int, int);
int sub(int, int);
int mul(int, int);
int divide(int, int);

void arith(void)
{
    int var1, var2;
    char sym;
    int result;
    printf("Input two integers and symbol (ex> 1 + 2) : ");
    scanf("%d %c %d", &var1, &sym, &var2);
    switch (sym) 
    {
        case '+':
            result = addition(var2,var1);
            break;
        case '-':
            result = sub(var2,var1);
            break;
        case '*':
            result = mul(var2,var1);
            break;
        case '/':
            if(var2 == 0)
            {
                printf("divided by zero\n");
                return ;
            }
            result = divide(var2,var1);
            break;
        default :
            printf("wrong symbol.\n");
            return ;
    }
    printf("result : %d\n", result);
    return ;
}

void perform_factorial()
{
    int num;
    int result;
    printf("input number : ");
    scanf("%d", &num);
    result = factorial(num);
    if(result < 0)
    {
        printf("invalid number\n");
        return;
    }

    printf("%d! = %d\n", num, result);
    return ;
}

void perform_fibo(void)
{
    int num;
    int result;
    printf("input number : ");
    scanf("%d", &num);
    result = fibo(num);
    if(result < 0)
    {
        printf("invalid number\n");
        return;
    }

    printf("%dth fibonacci value is %d\n", num, result);
    return ;
}

int main(void) {
    int select;
    int result;

    printf("Simple Calculator\n");
    printf("1. Arithmetic\n");
    printf("2. Factorial\n");
    printf("3. Fibonacci series\n");
    printf("Select ? ");
    scanf("%d", &select);
    fflush(stdin);

    switch (select)
    {
        case 1:
            arith();
            break;
        case 2:
            perform_factorial();
            break;
        case 3:
            perform_fibo();
            break;
        case 4:
            break;
        default :
            printf("wrong value\n");
    }
    printf("finish\n");
}


