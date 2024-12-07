function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

This code will cause a stack overflow error if the input is a very large number. This is because the function calls itself recursively until the base case is reached. The maximum depth of the recursion is limited by the amount of stack space available.
The problem is caused by the recursive call to foo within the function itself, with no additional conditions for exit apart from x==0. For very large numbers, the recursion will go on until it overflows the available memory space resulting in the stack overflow error.