class WxProgram::AreasController < WxProgram::BaseController
  def provinces
    @provinces = Area.provinces
  end
  
  def cities
    @cities = area_childs
  end
  
  def districts
    @districts = area_childs
  end
  
  private 

  def area_childs
    id = params.require('id')
    area = Area.find(id)
    area.childs
  end
end
