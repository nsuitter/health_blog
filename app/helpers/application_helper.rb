module ApplicationHelper
  def rtl locale
    if locale != "he"
      "<body>".html_safe
    else
      "<body dir='rtl'>".html_safe
    end
  end
end
