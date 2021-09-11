class StaticPagesController < ApplicationController
  def index
    @staticpages = StaticPage.includes(:admin_user)
  end

  def new
    @staticpage = StaticPage.new
  end

  def create
    @staticpage = StaticPage.new(static_page_params)
    if  @staticpage.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def static_page_params
      params.require(:static_page).permit(:my_number,:manufacturer,:lot_number,:date,).merge(admin_user_id: current_admin_user.id)
    end
end
