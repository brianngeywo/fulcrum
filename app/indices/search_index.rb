
class PropertyIndex
    include SearchFlip::Index
  
    def self.index_name
      "properties"
    end
  
    def self.model
      Property
    end
  
    def self.serialize(property)
      {
        id: property.id,
        name: property.name,
        description: property.description,
        searchtags: property.searchtags
      }
    end
  end
  view rawproperty_index.rb hosted with ❤ by GitHub