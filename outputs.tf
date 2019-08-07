output "ninety-nine-bottles-of-beer" {
    value = "${concat(module.ninety.verses, module.eighty.verses, module.seventy.verses, module.sixty.verses, module.fifty.verses, module.forty.verses, module.thirty.verses, module.twenty.verses, module.tenplus.verses, module.just.verses)}"
}
