module ApplicationHelper
  def official_form_for(name, *args, &block)
    options = args.extract_options!

    form_for(name, *(args << options.merge(:builder => OfficialForm, html: { class: 'form' })), &block)
  end

  def companies
    Company.all
  end
end
