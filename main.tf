# "99 Bottles of Beer", performed by Terraform locals
# Submitted by John S. Anderson
#
# 1. Install terraform (https://www.terraform.io/)
# 2. Run `terraform apply`

locals {
  verse = join("\n", [
    "", # blank line between verses
    "%%s bottle%%s of beer on the wall",
    "%%s bottle%%s of beer",
    "%s",
    "%%s bottle%%s of beer on the wall"
  ])
  lyric  = format(local.verse, "take one down, pass it around")
  ending = format(local.verse, "go to the store, buy some more")
  verses = concat(
    [for i in range(99, 2, -1) : format(local.lyric, i, "s", i, "s", i - 1, "s")],
    [for i in range(1, 0, -1) : format(local.lyric, i, "", i, "", "no more", "s")],
    [for i in range(0, -1, -1) : format(local.ending, "no more", "s", "no more", "s", 99, "s")]
  )
}

output "ninety-nine-bottles-of-beer" {
  value = join("\n", local.verses)
}
