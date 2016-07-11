class ReportsController < ApplicationController
  protect_from_forgery except: [:create]

  def create
    @report = Report.new(report_params)

    respond_to do |format|
      if @report.save
        format.html { redirect_to @report, notice: 'Report was successfully created.' }
        format.json { render :show, status: :created, location: @report }
      else
        format.html { render :new }
        format.json { render json: @report.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def report_params
      params.permit(:ver, :platform, :process_type, :guid, :app_ver, :minidump)
    end
end
