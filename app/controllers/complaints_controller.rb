class ComplaintsController < ApplicationController
  before_action :set_complaint, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @complaints = Complaint.all
    respond_with(@complaints)
  end

  def show
    respond_with(@complaint)
  end

  def new
    @complaint = Complaint.new
    respond_with(@complaint)
  end

  def edit
  end

  def create
    @complaint = Complaint.new(complaint_params)
    @complaint.save
    respond_with(@complaint)
  end

  def update
    @complaint.update(complaint_params)
    respond_with(@complaint)
  end

  def destroy
    @complaint.destroy
    respond_with(@complaint)
  end

  private
    def set_complaint
      @complaint = Complaint.find(params[:id])
    end

    def complaint_params
      params.require(:complaint).permit(:title, :description, :department_id, :complainttype_id)
    end
end
