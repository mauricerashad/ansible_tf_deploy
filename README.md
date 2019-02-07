# Purpose: Deploy Generic Terraform Project

## Required Packages

    - terraform
    - ansible

### Capabilities
    
    - Ansible: Variable validation
    - Ansible: Exception / error handling
    - Ansible: Dynamic terraform backend support

    - Terraform: Select workspaces
    - Terraform: Migrate backends
    - Terraform: Multi-action [plan only, plan and apply, apply previous plan only]

### Limitations

    - Ansible: Terraform module is limited:
        - no option to save generated plans in an alternate path
        - "-input=false" disables interactive prompts to perform state migrations
        - "terraform plan" must be run using ansible's "--check" mode or option "check_mode: no" vs explicit 'plan mode'

