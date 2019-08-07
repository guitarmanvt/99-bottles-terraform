output "words" {
    value = [
        join(", ", [
            "${var.bottles == 0 ? "No more" : var.bottles} bottles of beer on the wall",
            "${var.bottles == 0 ? "No more" : var.bottles} bottle${var.bottles == 1 ? "" : "s"} of beer",
            "${var.bottles == 0 ? "go to the store and buy some more" : "take one down, pass it around"}",
            "${var.bottles == 1 ? "No more" : (var.bottles + 99) % 100} bottle${var.bottles == 2 ? "" : "s"} of beer on the wall"
        ])
    ]
}
