data "template_file" "centos_linux_userdata" {
  template = "${file("${path.module}/centos_userdata.tpl")}"
}
