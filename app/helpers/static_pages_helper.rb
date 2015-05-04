module StaticPagesHelper
  def img_localizer img
    localized_image = "#{I18n.locale.to_s}/#{img}"
    if I18n.locale.to_s != 'en' && Rails.application.assets.find_asset(localized_image).nil? == false
      localized_image
    else
      img
    end
  end
end
