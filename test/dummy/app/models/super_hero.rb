class SuperHero < ActiveRecord::Base

  has_crud ajaxable: true,
           searchable: [:id, :name, :gender, :powers],
           orderable: false, settings: true

  has :many, attributed: :images, orderable: true

  image_accessor :image
  file_accessor  :file
  serialize :powers, Array

  scope :alphabetical, order("name DESC")

  default_scope alphabetical

  Gender = ["Male", "Female", "Robot"]
  Powers = ["X-RAY VISION", "REGENERATION", "TOTAL RECALL", "TELEPORTATION",
            "WEATHER CONTROL", "FORCE FIELDS", "UNDERWATER BREATHING", "SUPER STRENGTH"]

  validates :name, :description, presence: true

  crud.config do
    map image_uid: :image
    map file_uid:  :file

    fields image:    { type: :image },
           file:     { type: :file  },
           gender:   { type: :select, data: Gender },
           is_alive: { type: :boolean },
           powers:   { type: :check_boxes, data: Powers },
           published_at: { type: :date }

    form   fields: [:name, :description, :published_at, :gender, :is_alive, :url,
                    :telephone]

    config :admin do
      exportable true
      csv     except: [:image_name, :file_name]
      index   fields: [:id, :name, :image, :file]
              # order:  { name: :asc }
      form    fields: [:name, :description, :published_at, :gender, :is_alive, :url,
                       :telephone, :image, :file, :powers, :images]
      reportable true
      reports [{ span: :created_at, field: :id, strategy: :count },
               { span: :created_at, field: :id, strategy: :sum }]
    end
  end

  def self.except_these_groups
    ["Tags", "SEO"]
  end

  def except_these_groups
    ["SEO"]
  end

  def to_s
    name
  end

end
