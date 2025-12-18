source /usr/share/cachyos-fish-config/cachyos-config.fish

# --- Start of env variables ---

set -gx EDITOR 'nvim'

# --- Start of Aliases ---

alias lg="lazygit"

alias ti="terraform init"
alias ta="terraform apply"

alias tasb1="terraform workspace select sb1 && terraform apply --var-file var-files/terraform.sb1.tfvars"
alias tasb2="terraform workspace select sb2 && terraform apply --var-file var-files/terraform.sb2.tfvars"
alias tasb3="terraform workspace select sb3 && terraform apply --var-file var-files/terraform.sb3.tfvars"
alias tasb4="terraform workspace select sb4 && terraform apply --var-file var-files/terraform.sb4.tfvars"
alias tasb5="terraform workspace select sb5 && terraform apply --var-file var-files/terraform.sb5.tfvars"
alias tasb6="terraform workspace select sb6 && terraform apply --var-file var-files/terraform.sb6.tfvars"
alias tasb7="terraform workspace select sb7 && terraform apply --var-file var-files/terraform.sb7.tfvars"
alias tasb8="terraform workspace select sb8 && terraform apply --var-file var-files/terraform.sb8.tfvars"
alias tasb9="terraform workspace select sb9 && terraform apply --var-file var-files/terraform.sb9.tfvars"
alias tasb10="terraform workspace select sb10 && terraform apply --var-file var-files/terraform.sb10.tfvars"
alias tasb11="terraform workspace select sb11 && terraform apply --var-file var-files/terraform.sb11.tfvars"

alias tdsb1="terraform workspace select sb1 && terraform destroy --var-file var-files/terraform.sb1.tfvars"
alias tdsb2="terraform workspace select sb2 && terraform destroy --var-file var-files/terraform.sb2.tfvars"
alias tdsb3="terraform workspace select sb3 && terraform destroy --var-file var-files/terraform.sb3.tfvars"
alias tdsb4="terraform workspace select sb4 && terraform destroy --var-file var-files/terraform.sb4.tfvars"
alias tdsb5="terraform workspace select sb5 && terraform destroy --var-file var-files/terraform.sb5.tfvars"
alias tdsb6="terraform workspace select sb6 && terraform destroy --var-file var-files/terraform.sb6.tfvars"
alias tdsb7="terraform workspace select sb7 && terraform destroy --var-file var-files/terraform.sb7.tfvars"
alias tdsb8="terraform workspace select sb8 && terraform destroy --var-file var-files/terraform.sb8.tfvars"
alias tdsb9="terraform workspace select sb9 && terraform destroy --var-file var-files/terraform.sb9.tfvars"
alias tdsb10="terraform workspace select sb10 && terraform destroy --var-file var-files/terraform.sb10.tfvars"
alias tdsb11="terraform workspace select sb11 && terraform destroy --var-file var-files/terraform.sb11.tfvars"

# --- End of Aliases ---

# --- Start of Prompt ---

starship init fish | source

# --- End of Prompt ---
