data "null_data_source" "bottles_before" {
  has_computed_default = "bottle${var.bottles == 1 ? "" : "s"}"
}
