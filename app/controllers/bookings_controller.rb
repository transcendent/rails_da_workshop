class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!



  # GET /bookings
  # GET /bookings.json
  def index
    if params[:start_date] 
      #start_date = Date.parse('#{(params[:start_date][:year]}-#{params[:start_date][:month]}-#{params[:start_date][:day])}')
      
      #end_date =  Date.parse('#{(params[:end_date][:year]}-#{params[:end_date][:month]}-#{params[:end_date][:day])}')
      
      start_date = Date.new(params[:start_date][:year].to_i, params[:start_date][:month].to_i, params[:start_date][:day].to_i)
      end_date = Date.new(params[:end_date][:year].to_i, params[:end_date][:month].to_i, params[:end_date][:day].to_i)

      puts start_date
      puts end_date
      @bookings = Booking.where(booking_date:  (start_date .. end_date ))
    else
      @bookings = Booking.all
    end
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)
    @booking.user  = current_user
    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:user_id, :room_id, :booking_date)
    end
end
