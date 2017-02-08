# Helpers for aws class
module AwsHelpers
  # Connect to service
  def self.connect(service, region)
    case service
    when 'ec2'
      Aws::EC2::Client.new(region: region)
    else
      AWSLOG.log.error 'Wrong type of service'
    end
  end

  # List items in service
  def self.list(client)
    puts client.describe_instances
  end

  def self.list_object(client, object)
    puts client.describe_instances(instance_ids: [object])
  end

  # Cleanup objects
  def self.clean(_client)
    AWSLOG.log.info 'cleaning instances'
  end

  def self.clean_object(_client)
    AWSLOG.log.info 'cleaning instance'
  end
end
