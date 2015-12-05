# render init script for a cluster of consul leaders using our template
resource "template_file" "generic_init" {
    template = "${path.module}/init.tpl"
    vars {
        cidr_prefix_a = "${var.cidr_prefix_a}"
        cidr_prefix_c = "${var.cidr_prefix_c}"
        client_token = "${var.consul_client_token}"
        datacenter = "${var.datacenter}"
        disable_remote_exec = "${var.disable_consul_remote_exec}"
        extra_init = "${var.extra_init}"
        extra_pillar = "${var.extra_pillar}"
        hostname_prefix = "${var.hostname_prefix}"
        leader_count = "${var.leader_count}"
        log_level = "${var.log_level}"
        master_token = "${var.consul_client_token}"
        secret_key = "${var.consul_secret_key}"
    }
}
