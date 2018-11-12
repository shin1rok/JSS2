class JobSeekerMessagesController < ApplicationController
  before_action :set_job_seeker_message, only: [:show, :edit, :update, :destroy]

  # GET /job_seeker_messages
  # GET /job_seeker_messages.json
  def index
    @job_seeker_messages = JobSeekerMessage.all
  end

  # GET /job_seeker_messages/1
  # GET /job_seeker_messages/1.json
  def show
  end

  # GET /job_seeker_messages/new
  def new
    @job_seeker_message = JobSeekerMessage.new
  end

  # GET /job_seeker_messages/1/edit
  def edit
  end

  # POST /job_seeker_messages
  # POST /job_seeker_messages.json
  def create
    @job_seeker_message = JobSeekerMessage.new(job_seeker_message_params)

    respond_to do |format|
      if @job_seeker_message.save
        format.html { redirect_to @job_seeker_message, notice: 'Job seeker message was successfully created.' }
        format.json { render :show, status: :created, location: @job_seeker_message }
      else
        format.html { render :new }
        format.json { render json: @job_seeker_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_seeker_messages/1
  # PATCH/PUT /job_seeker_messages/1.json
  def update
    respond_to do |format|
      if @job_seeker_message.update(job_seeker_message_params)
        format.html { redirect_to @job_seeker_message, notice: 'Job seeker message was successfully updated.' }
        format.json { render :show, status: :ok, location: @job_seeker_message }
      else
        format.html { render :edit }
        format.json { render json: @job_seeker_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_seeker_messages/1
  # DELETE /job_seeker_messages/1.json
  def destroy
    @job_seeker_message.destroy
    respond_to do |format|
      format.html { redirect_to job_seeker_messages_url, notice: 'Job seeker message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_seeker_message
      @job_seeker_message = JobSeekerMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def job_seeker_message_params
      params.require(:job_seeker_message).permit(:message, :job_seeker_id, :company_id)
    end
end
