class OfficialsController < ApplicationController
  def new
    @official = Official.new
  end

  def create
    @official = Official.new(official_params)

    if @official.save
      redirect_to thank_you_officials_path, notice: t(:official_created)
    else
      render action: 'new'
    end
  end

  private

    def official_params
      params.require(:official).permit(:size, *Official::PROPERTIES_KEYS, role_ids: [])
    end
end
