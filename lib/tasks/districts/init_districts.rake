require File.expand_path('../../../config/environment', __dir__)

namespace :init_data do
  task :init_districts => :environment do
    InitDistricts.init
  end

  class InitDistricts
    class << self
      def init
        puts 'Start to initialize district ...'
        file_path = File.expand_path('default_districts.json', __dir__)
        data = File.read(file_path)
        provinces = JSON.parse(data).to_a
        provinces.each do |province|
          recursive_query(province.with_indifferent_access, 
            nil, 'province')
        end
        puts 'finish to initialize district ...'
      end
      
      def recursive_query(json_data, parent_id, category)
        name = json_data[:name]
        code = json_data[:code]
        pinyin = json_data[:pinyin].delete!('_')

        return if name == '市辖区' && category == 'district'

        params = {
          :parent_id => parent_id,
          :category => category,
          :name => name,
          :area_code => code,
          :pinyin => pinyin
        }

        area = Area.find_or_create_by(params)
        
        return if json_data[:children].blank?

        json_data[:children].each do |node|
          child_category = 'city' if category.eql?('province')
          child_category = 'district' if category.eql?('city')
          recursive_query(node.with_indifferent_access, area.id, child_category)
        end
      end
    end
  end
end
