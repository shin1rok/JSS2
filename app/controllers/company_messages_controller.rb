class CompanyMessagesController < ApplicationController
  before_action :set_company_message, only: [:show, :edit, :update, :destroy]

  # GET /company_messages
  # GET /company_messages.json
  def index
    @company_messages = CompanyMessage.all
  end

  # GET /company_messages/1
  # GET /company_messages/1.json
  def show
  end

  # GET /company_messages/new
  def new
    @company_message = CompanyMessage.new
  end

  # GET /company_messages/1/edit
  def edit
  end

  # POST /company_messages
  # POST /company_messages.json
  def create
    @company_message = CompanyMessage.new(company_message_params)

    respond_to do |format|
      if @company_message.save
        format.html { redirect_to @company_message, notice: 'Company message was successfully created.' }
        format.json { render :show, status: :created, location: @company_message }
      else
        format.html { render :new }
        format.json { render json: @company_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_messages/1
  # PATCH/PUT /company_messages/1.json
  def update
    respond_to do |format|
      if @company_message.update(company_message_params)
        format.html { redirect_to @company_message, notice: 'Company message was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_message }
      else
        format.html { render :edit }
        format.json { render json: @company_message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_messages/1
  # DELETE /company_messages/1.json
  def destroy
    @company_message.destroy
    respond_to do |format|
      format.html { redirect_to company_messages_url, notice: 'Company message was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_message
      @company_message = CompanyMessage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_message_params
      params.require(:company_message).permit(:message, :company_id, :job_seeker_id)
    end
end
