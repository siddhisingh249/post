class AvatarUploader < CarrierWave::Uploader::Base
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url(*args)
   ActionController::Base.helpers.asset_path("fallback/" + [version_name, "defualt.png"].compact.join('_'))
  
  end

end
