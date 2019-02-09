class Picture < ApplicationRecord
    mount_uploader :picfile, PicUploader
    serialize :picfile, JSON
    belongs_to :presentation
end
