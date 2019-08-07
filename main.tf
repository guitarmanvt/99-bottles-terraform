resource "null_resource" "verse" {
    count = var.max_bottles
    provisioner "local-exec" {
        command = "echo ${var.max_bottles - count.index} bottle${(var.max_bottles - count.index == 1) ? "" : "s"} of beer on the wall"
    }
}
