class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @notes = Note.new
  end

  def edit
  end

  def create
    @user = User.find(params[:id])
    @note = @user.notes.build(note_params)

    respond_to do |format|
      if @note.save
        format.html { redirect_to @note, notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def note_params
      params.require(:note).permit(:title, :description)
    end
end
