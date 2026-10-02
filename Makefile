.PHONY: init fmt validate lint scan plan clean

init:
	terraform init

fmt:
	terraform fmt -recursive

validate:
	terraform validate

lint:
	tflint --recursive

scan:
	checkov -d . --quiet

plan:
	terraform plan -out=tfplan

clean:
	rm -rf .terraform .terraform.lock.hcl tfplan handler.zip .terraform-build
