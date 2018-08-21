Datadog.configure do |c|
    # This will activate auto-instrumentation for Rails
    c.use :rails
  end

  require 'ddtrace'
  
Datadog.configure do |c|
  # Configure the tracer here.
  # Activate integrations, change tracer settings, etc...
  # By default without additional configuration, nothing will be traced.
end

