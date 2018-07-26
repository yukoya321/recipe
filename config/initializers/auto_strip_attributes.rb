AutoStripAttributes::Config.setup do
  set_filter strip_double_byte_space: false do |value|
    unless value.nil? || !value.is_a?(String)
      value.gsub(/(^(\s|　)+)|((\s|　)+$)/, '')
    end
  end
end