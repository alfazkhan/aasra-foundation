class VolunteerController < ApplicationController

  def create
    @volunteer = Volunteer.new(volunteer_params)
    @volunteer.profession.upcase!

    puts '==============================='
    puts @volunteer.image
    puts '=================================='

    check_params(@volunteer)

    if @volunteer.save
      redirect_to root_path
    else
      render 'pages/join'
    end
  end



  private

  def check_params(params)
    if params.gender == 'Gender'
      params.gender = ''
    end

    if params.profession == 'PROFESSION'
      params.profession = ''
    end

    if params.blood_group == 'Blood Group'
      params.blood_group = ''
    end
  end

  def volunteer_params
    params.require(:volunteer).permit(:first_name,:last_name,:age,:gender,:address,:contact,:email,:blood_group,:description,:profession,:active,:image)
    #debugger
  end

end
