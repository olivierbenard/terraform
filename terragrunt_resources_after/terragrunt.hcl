terraform {
    extra_arguments "common_vars" {
        // commands = ["plan", "apply", "destroy"]
        commands = get_terraform_commands_that_needs_vars()
        arguments = ["-var-file=params.tfvars"]
    }
}