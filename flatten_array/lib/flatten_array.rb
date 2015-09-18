require 'logger'

$log = Logger.new STDOUT
$log.level = Logger::DEBUG

def flatten_array(values, flat = [])
  $log.debug "flatten_array values=#{values}, flat=#{flat}"
  values.map do |value|
    if value.is_a?(Array)
      flatten_array(value, flat)
    else
      $log.debug "<< #{value}"
      flat << value
    end
  end
  $log.debug "return values=#{values}, flat=#{flat}"
  flat
end
