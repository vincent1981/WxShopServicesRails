class WxProgram::UserAddressesController < WxProgram::BaseController
  before_action :authenticate_user!
  before_action :default_address
  before_action :product_by_id, :only => [:modify_address, 
    :delete_address, :delete_address, :show_address]

  def add_address
    address_params = params.permit(:province_id, :city_id, :district_id, 
      :recipients, :phone_number, :address, :postal_code, :acquiescent)
    
    address_params.merge!(
      user: @current_user
    )

    @address = UserReceivingAddresse.create(address_params)

    modify_default_address(@address) if @address.acquiescent
  end

  def modify_address
    address_params = params.permit(:province_id, :city_id, :district_id, 
      :recipients, :phone_number, :address, :postal_code, :acquiescent)
    
    @address.update!(address_params)
  end

  def delete_address
    @address.destroy!

    render status: :ok
  end

  def list_addresses
    @addresses = @current_user.user_receiving_addresses
  end
  
  def show_address
    @address
  end
  
  private 

  def product_by_id
    id = params.require(:id)

    @address = UserReceivingAddresse.find_by(:id => id)
  end
  

  def default_address
    @default_address = UserReceivingAddresse.find_by(:user => @current_user,
      :acquiescent => true)
  end

  def modify_default_address(address)
    return if @default_address.balnk? || address.id == @default_address.id
    
    @default_address.update!(:acquiescent => false)
  end
end
