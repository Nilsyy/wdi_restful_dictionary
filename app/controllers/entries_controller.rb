class EntriesController < ApplicationController
  def create
    # redirect_to entry_url
    @entry = Entry.new

    @entry.word = params[:entry][:word]
    @entry.definition = params[:entry][:definition]
    @entry.language = params[:entry][:language]

    if @entry.save
      redirect_to entries_url
    else
      render new_entry_path
    end
  end

  def update
    # redirect_to entry_url(params[:id])
    @entry = Entry.find(params[:id])

    @entry.word = params[:entry][:word]
    @entry.definition = params[:entry][:definition]
    @entry.language = params[:entry][:language]

    if @entry.save
      redirect_to entries_url
    else
      render edit_entry_url(@entry)
    end
  end

  def destroy
    # redirect_to entries_url
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to entries_path
  end

  def index
    # here we'll define some @instance_variables to store data from the database for the views to use
    # render :index
    @entries = Entry.all
  end

  def show
    # render :show
    @entry = Entry.find(params[:id])
  end

  def new
    # render :new
    @entry = Entry.new
  end

  def edit
    # render :edit
    @entry = Entry.find(params[:id])
  end

end
