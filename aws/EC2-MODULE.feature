Feature: EC2 Module related general feature


	Scenario: Ensure source on EC2 instance
		Given I have ec2_private_cluster defined
		Then it must have source
		And its value must be "git@github.com:jvo5610/aws-ec2.git"
