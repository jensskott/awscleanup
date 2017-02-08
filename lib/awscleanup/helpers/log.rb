class AWSLOG
  def self.log
    # Create log
    if @logger.nil?
      @logger = Logger.new STDOUT

      @logger.level = Logger::DEBUG
      @logger.datetime_format = '%Y-%m-%d %H:%M:%S '
    end
    @logger
  end
end
