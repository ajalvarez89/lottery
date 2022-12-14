ActiveAdmin.register Raffle do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :number, :name, :status
  #
  # or
  #
  permit_params do
    permitted = [:number, :name, :status, :phone_number]
    permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end
end
