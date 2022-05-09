package tests

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
)

// An example of how to tests the Terraform module to create cos instance in examples/instance using Terratest.
func TestAccIBMObComplete(t *testing.T) {
	t.Parallel()

	// Construct the terraform options with default retryable errors to handle the most common retryable errors in
	// terraform testing.
	terraformOptions := terraform.WithDefaultRetryableErrors(t, &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../examples/obervability-complete",

		// Variables to pass to our Terraform code using -var options
		Vars: map[string]interface{}{
			"logging_name":          "logging",
			"activity_tracker_name": "at",
			"monitoring_name":       "sysdig",
			"resource_group":        "Default",
		},
	})

	// At the end of the tests, run `terraform destroy` to clean up any resources that were created
	defer terraform.Destroy(t, terraformOptions)

	// This will run `terraform init` and `terraform apply` and fail the tests if there are any errors
	terraform.InitAndApply(t, terraformOptions)

	// Run `terraform output` to get the value of an output variable
	/*instanceID := terraform.Output(t, terraformOptions, "cos_instance_id")
	if len(instanceID) <= 0 {
		t.Fatal("Wrong output")
	}
	fmt.Println("COS INstance iD", instanceID)*/
}
