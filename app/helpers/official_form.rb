class OfficialForm < ActionView::Helpers::FormBuilder
  FORM_HELPERS = %w{text_field password_field text_area file_field
                    number_field email_field telephone_field phone_field url_field
                    select collection_select date_select time_select datetime_select}

  delegate :content_tag, to: :@template

  FORM_HELPERS.each do |method_name|
    define_method(method_name) do |name, *args|
      options = args.extract_options!
      options[:spellcheck] = false

      if object.respond_to?(:errors) && object.errors.include?(name)
        options[:class] = 'error'
        suffix = object.errors.get(name).to_sentence
      else
        suffix = I18n.t("#{name}_help", default: '')
      end

      label(name, class: 'input-label') + super(name, options) + content_tag(:span, suffix, class: 'suffix')
    end
  end

  def role_check_boxes
    collection_check_boxes(:role_id, Role.all, :id, :name) do |role|
      role.check_box + role.label + content_tag(:span, role.object.body, class: 'role-help')
    end
  end

  def submit
    super(class: "button")
  end
end
