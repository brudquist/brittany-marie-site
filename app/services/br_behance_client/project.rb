module BRBehanceClient
  class Project
    include ActiveModel::Model
    attr_accessor :id, :cover_image, :name, :module_images, :description

    # Ugh, clean this up.  N.B.
    def self.find(id)
      client = Base.new.client # get client object
      client_project = client.project(id).with_indifferent_access
      self.new( id: client_project[:id],
                cover_image: client_project[:covers]['404'],
                name: client_project[:name],
                description: client_project[:description],
                module_images: build_module_images(client_project[:modules]) )
    end

    def self.build_module_images(modules)
      modules.map do |mod|
        ModuleImage.new(image_url: mod["src"], width: mod["width"], height: mod["height"])
      end
    end

  end
end
