resource "null_resource" "example" {
  # Specify triggers if needed
  triggers = {
    # You can define triggers that determine when this resource should be recreated
    timestamp = "${timestamp()}"
  }

  # Optionally, define provisioners to execute commands or scripts
  provisioner "local-exec" {
    command = "echo This is a null resource"
  }

  # Optionally, specify depends_on if this resource depends on other resources
  # depends_on = [azurerm_resource_group.example]

  # Optionally, define lifecycle configuration for the null resource
  lifecycle {
    # Prevent Terraform from automatically deleting this resource
    prevent_destroy = true
  }
}
