require 'groupme_interface'

class GroupsController < ApplicationController
  def index
    @groups = ::GroupMeInterface.get_all_groups current_user.access_token
  end

  def show
    @messages = ::GroupMeInterface.get_all_messages current_user.access_token, params[:group_id], params[:num_messages].to_i
    @messages = @messages.sort_by{|message| message['created_at'] }
  end

end