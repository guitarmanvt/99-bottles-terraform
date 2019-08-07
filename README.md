# "99 Bottles of Beer", performed by Terraform

## Quick start

Install terraform.
Run `./sing`

## Detailed execution

To run this the first time, use `terraform apply`.
To run it again, use `terraform refresh`.
To clear everything out, run `terraform destroy`.

## Why?

So I could submit a Terraform version to 99-bottles-of-beer.net

## Thoughts

Terraform doesn't really do this well. It would have been easier if modules
supported the `count` keyword...but they don't, yet.

Terraform doesn't really do output. Its output parameters will have to suffice.
