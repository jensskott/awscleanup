# Gems
require 'aws-sdk'
require 'logger'

# Local files
require_relative 'awscleanup/helpers/aws.rb'
require_relative 'awscleanup/helpers/log.rb'

# Require version
require_relative 'awscleanup/version.rb'

# Class for cleanup job
class AwsCleanup
  def initialize(service, region)
    @service = service
    @region = region
    @client = AwsHelpers.connect(@service, @region)
  end

  def list
    AwsHelpers.list(@client)
  end

  def list_object(object)
    AwsHelpers.list_object(@client, object)
  end

  def clean
    AwsHelpers.clean(@client)
  end

  def clean_object
    AwsHelpers.clean_object(@client)
  end
end
