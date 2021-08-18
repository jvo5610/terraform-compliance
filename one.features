Feature: EC2 related general feature

	Scenario: Ensure encryption on EC2 instance volumes
		Given I have digitalocean_spaces_bucket defined
		Then it must have versioning
        Then it must have enabled
		And its value must be true