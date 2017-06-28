require 'active_support'
require 'active_support/core_ext'
require 'erb'
require_relative './session'

class ControllerBase
  attr_reader :req, :res, :params, :already_built_response, :sesssion

  # Setup the controller
  def initialize(req, res)
    #default route_parms takes in the params, and sets it as route_params

    @req = req
    @res = res
    # @params = route_params.merge
    @already_built_response = false
  end

  # Helper method to alias @already_built_response
  def already_built_response?
    @already_built_response
  end

  # Set the response status code and header
  def redirect_to(url)
    raise "double render error" if already_built_response?
    @res.status = 302
    @res.location = url
    @already_built_response = true

    session.store_session(@res)
  end

  # Populate the response with content.
  # Set the response's content type to the given type.
  # Raise an error if the developer tries to double render.
  def render_content(content, content_type)
    raise "double render error" if already_built_response?

    @res['Content-Type'] = content_type
    @res.write(content)
    @already_built_response = true
    session.store_session(@res)
  end

  #ERB is built into ruby as a template rendering library

  # binding is a Kernel method that packages up the environment bindings (variables, methods, and self) that are in-scope at the current point of a Ruby program and makes them available in another context

  # use ERB and binding to evaluate templates
  # pass the rendered html to render_content
  def render(template_name)
    #what is this syntax

    dir_path = File.dirname(__FILE__)
      template_fname = File.join(
        dir_path, "..",
        "views", self.class.name.underscore, "#{template_name}.html.erb"
      )

      template_code = File.read(template_fname)

      render_content(
        ERB.new(template_code).result(binding),
        "text/html"
      )
  end

  # method exposing a `Session` object
  def session
    @session ||= Session.new(@req)
  end

  # use this with the router to call action_name (:index, :show, :create...)
  def invoke_action(name)
    
  end
end
