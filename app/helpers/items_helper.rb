module ItemsHelper

  def is_admin_edit
    if current_user.id == 999
      link_to 'Edit Item', edit_item_path(@item), class: "btn btn-primary btn-md"
    end
  end
  
end
