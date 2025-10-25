output "unique_instance_types" {
  value = toset(var.instances)
}




# used toset() to create only unique EC2 instances based on type, and output those unique types! If you want instance names (like "mongodb"), you’d use a map instead.