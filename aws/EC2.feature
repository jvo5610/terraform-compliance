Feature: EC2 related general feature

	Scenario: Ensure sg on EC2 instance
		Given I have aws_instance defined
			Then it must have security_groups defined
		Given I have AWS Security Group defined
			When it has ingress
    			Then it must have ingress
    			Then it must not have any protocol and port 22 for 0.0.0.0/0

	Scenario: Ensure all data stored in the Launch configuration EBS is securely encrypted
		Given I have aws_instance defined
		When it has ebs_block_device
		Then it must have ebs_block_device
		When it has snapshot_id
		When its snapshot_id is false
		Then it must have encrypted
		And its value must be true


	Scenario: Ensure all data stored in the Launch configuration EBS is securely encrypted (launch_configuration)
		Given I have aws_launch_configuration defined
		When it has ebs_block_device
		Then it must have ebs_block_device
		When it has snapshot_id
		When its snapshot_id is false
		Then it must have encrypted
		And its value must be True
