resource "vcd_vapp" "vapp" {
  count = var.create  ? length(var.vapp) : 0

  name      = var.vapp[count.index]["name"]
  power_on  = lookup(var.vapp[count.index], "power_on", null)
  org       = lookup(var.vapp[count.index], "org", null)
  vdc       = lookup(var.vapp[count.index], "vdc", null)

  metadata = var.default_metadata 
  depends_on = [ var.depends ]

}
