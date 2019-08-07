output "verses" {
    value = "${concat(module.nine.words, module.eight.words, module.seven.words, module.six.words, module.five.words, module.four.words, module.three.words, module.two.words, module.one.words, module.zero.words)}"
}
