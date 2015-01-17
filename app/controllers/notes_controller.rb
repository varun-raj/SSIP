class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @notes = Note.all
    respond_with(@notes)
  end

  def show
    respond_with(@note)
  end

  def new
    if faculty_signed_in?
    @note = Note.new
    respond_with(@note)
  else

    redirect_to new_faculty_session_path
    end

  end

  def edit
  end

  def create
    if faculty_signed_in?

      @note = Note.new(note_params)
      @note.attachment = params[:file]
      @note.faculty = current_faculty
      @note.save
      respond_with(@note)
    end
  end

  def update
    @note.update(note_params)
    respond_with(@note)
  end

  def destroy
    @note.destroy
    respond_with(@note)
  end

  private
    def set_note
      @note = Note.find(params[:id])
    end

    def note_params
      params.require(:note).permit(:title, :description, :subject_id, :faculty_id, :department_id, :attachment )
    end
end
