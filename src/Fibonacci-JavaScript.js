function fibonacci(intIn) {
    var n = Number(intIn);
    if (n == 0) return 0;
    if (n <= 2) {
        return 1;
    } else {
        return fibonacci(n - 1) + fibonacci(n - 2);
    }
}

function printFib(limitNo, elementID) {
    var n = Number(limitNo);
    for (var i = 0; i <= n; i++) {
        document.getElementById(elementID).innerHTML += i + ": " + fibonacci(i) + "<br\/>";
    }
}

var recursive = function(n) {
    if(n <= 2) {
        return 1;
    } else {
        return this.recursive(n - 1) + this.recursive(n - 2);
    }
};