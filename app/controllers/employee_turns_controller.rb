class EmployeeTurnsController < ApplicationController
  # GET /employee_turns
  # GET /employee_turns.json
  def index
    @employee_turns = EmployeeTurn.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @employee_turns }
    end
  end

  # GET /employee_turns/1
  # GET /employee_turns/1.json
  def show
    @employee_turn = EmployeeTurn.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @employee_turn }
    end
  end

  # GET /employee_turns/new
  # GET /employee_turns/new.json
  def new
    @employee_turn = EmployeeTurn.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @employee_turn }
    end
  end

  # GET /employee_turns/1/edit
  def edit
    @employee_turn = EmployeeTurn.find(params[:id])
  end

  # POST /employee_turns
  # POST /employee_turns.json
  def create
    @employee_turn = EmployeeTurn.new(params[:employee_turn])

    respond_to do |format|
      if @employee_turn.save
        format.html { redirect_to @employee_turn, notice: 'Employee turn was successfully created.' }
        format.json { render json: @employee_turn, status: :created, location: @employee_turn }
      else
        format.html { render action: "new" }
        format.json { render json: @employee_turn.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /employee_turns/1
  # PUT /employee_turns/1.json
  def update
    @employee_turn = EmployeeTurn.find(params[:id])

    respond_to do |format|
      if @employee_turn.update_attributes(params[:employee_turn])
        format.html { redirect_to @employee_turn, notice: 'Employee turn was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @employee_turn.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_turns/1
  # DELETE /employee_turns/1.json
  def destroy
    @employee_turn = EmployeeTurn.find(params[:id])
    @employee_turn.destroy

    respond_to do |format|
      format.html { redirect_to employee_turns_url }
      format.json { head :no_content }
    end
  end
end
