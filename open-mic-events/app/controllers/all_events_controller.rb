class AllEventsController < ApplicationController
  def index
    @entries = Entry.all.group_by(&:day)
  end
end
