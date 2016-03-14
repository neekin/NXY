class PageController < ApplicationController
  def index
    if current_user
      if current_user.company_id
       @lines  = Line.where(:company_id => current_user.company_id).all

      end
    end
  end

  def login
  end

  def managecenter

    if current_user.company_id && !current_user.isresponsible
      flash.notice="不是企业负责人，无权操作"
      redirect_to :root
    end
  end
end
