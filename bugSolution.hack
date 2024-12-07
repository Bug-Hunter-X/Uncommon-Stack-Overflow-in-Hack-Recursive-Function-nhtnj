function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else if (x > 10) { //added condition to avoid stack overflow
    return 0; // Or handle large inputs appropriately
  } else {
    return x * foo(x - 1);
  }
}

function main(): void {
  echo foo(5);
}

//Alternative iterative solution:
function factorial(x: int): int {
  var result = 1;
  for (var i = 1; i <= x; ++i) {
    result *= i;
  }
  return result;
}

function main(): void {
echo factorial(5);
} 