class RoomsController < ApplicationController
  def new
  end
  def create
  #  @actress = Actress.all
    @actress = Actress.where(category: "生徒")
    @actress_t = Actress.where(category: "担任")
    @actress_pe = Actress.where(category: "保健の先生")
    @actress_t_ids = @actress_t.ids
    @actress_ids = @actress.ids
    @actress_pe_ids = @actress_pe.ids
    @actress_ids.shuffle!
    @actress_t_ids.shuffle!
    @actress_pe_ids.shuffle!
    @room = Room.create(name: params[:name],
        seat_0_1: @actress_t_ids[0],
        seat_1_1: @actress_ids[0], seat_1_3: @actress_ids[1], seat_1_5: @actress_ids[2], seat_1_7: @actress_ids[3],
        seat_2_2: @actress_ids[4], seat_2_4: @actress_ids[5], seat_2_6: @actress_ids[6], seat_2_8: @actress_ids[7],
        seat_3_1: @actress_ids[8], seat_3_3: @actress_ids[9], seat_3_5: @actress_ids[10], seat_3_7: @actress_ids[11],
        seat_4_1: @actress_pe_ids[0]
      )
    if @room.save
        session[:room_id] = @room.id
        redirect_to("/rooms/#{@room.id}/select")
    else
      @error_message = "その名前では開校できません"
      render("/rooms/new")
    end
  end
  def select
    # render :layout => nil
    # binding.pry
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def click
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_1_2 = 1
    if @rooms.save
      redirect_to("/rooms/#{@rooms.id}/result_1_2")
    end
  end
  def click1
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_1_4 = 1
    if @rooms.save
      redirect_to("/rooms/#{@rooms.id}/result_1_4")
    end
  end
  def click2
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_1_6 = 1
    if @rooms.save
      redirect_to("/rooms/#{@rooms.id}/result_1_6")
    end
  end
  def click3
      @rooms = Room.find_by(id: params[:id])
      @rooms.seat_1_8 = 1
      if @rooms.save
        redirect_to("/rooms/#{@rooms.id}/result_1_8")
      end
  end
  def click4
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_2_1 = 1
    if @rooms.save
      redirect_to("/rooms/#{@rooms.id}/result_2_1")
    end
  end
  def click5
      @rooms = Room.find_by(id: params[:id])
      @rooms.seat_2_3 = 1
      if @rooms.save
        redirect_to("/rooms/#{@rooms.id}/result_2_3")
      end
  end
  def click6
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_2_5 = 1
    if @rooms.save
      redirect_to("/rooms/#{@rooms.id}/result_2_5")
    end
  end
  def click7
      @rooms = Room.find_by(id: params[:id])
      @rooms.seat_2_7 = 1
      if @rooms.save
        redirect_to("/rooms/#{@rooms.id}/result_2_7")
      end
  end
  def click8
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_3_2 = 1
    if @rooms.save
      redirect_to("/rooms/#{@rooms.id}/result_3_2")
    end
  end
  def click9
      @rooms = Room.find_by(id: params[:id])
      @rooms.seat_3_4 = 1
      if @rooms.save
        redirect_to("/rooms/#{@rooms.id}/result_3_4")
      end
  end
  def click10
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_3_6 = 1
    if @rooms.save
      redirect_to("/rooms/#{@rooms.id}/result_3_6")
    end
  end
  def click11
      @rooms = Room.find_by(id: params[:id])
      @rooms.seat_3_8 = 1
      if @rooms.save
        redirect_to("/rooms/#{@rooms.id}/result_3_8")
      end
  end
  def search
     @rooms = Room.limit(10).order(created_at: :desc)
  end
  def find
     @rooms = Room.search(params[:search])
  end
  def enter
  end
  def result
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def result1
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def result2
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def result3
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def result4
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def result5
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def result6
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def result7
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def result8
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def result9
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def result10
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def result11
    @rooms = Room.find_by(id: params[:id])
    @actress_t = Actress.find_by(id: @rooms.seat_0_1)
    @actress = Actress.find_by(id: @rooms.seat_1_1)
    @actress1 = Actress.find_by(id: @rooms.seat_1_3)
    @actress2 = Actress.find_by(id: @rooms.seat_1_5)
    @actress3 = Actress.find_by(id: @rooms.seat_1_7)
    @actress4 = Actress.find_by(id: @rooms.seat_2_2)
    @actress5 = Actress.find_by(id: @rooms.seat_2_4)
    @actress6 = Actress.find_by(id: @rooms.seat_2_6)
    @actress7 = Actress.find_by(id: @rooms.seat_2_8)
    @actress8 = Actress.find_by(id: @rooms.seat_3_1)
    @actress9 = Actress.find_by(id: @rooms.seat_3_3)
    @actress10 = Actress.find_by(id: @rooms.seat_3_5)
    @actress11 = Actress.find_by(id: @rooms.seat_3_7)
    @actress_pe = Actress.find_by(id: @rooms.seat_4_1)
  end
  def menu
  end
  def share
  end
  def photo
  end
  def destroy
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_1_2 = 0
    if @rooms.save
      redirect_to("/top")
    end
  end
  def destroy1
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_1_4 = 0
    if @rooms.save
      redirect_to("/top")
    end
  end
  def destroy2
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_1_6 = 0
    if @rooms.save
      redirect_to("/top")
    end
  end
  def destroy3
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_1_8 = 0
    if @rooms.save
      redirect_to("/top")
    end
  end
  def destroy4
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_2_1 = 0
    if @rooms.save
      redirect_to("/top")
    end
  end
  def destroy5
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_2_3 = 0
    if @rooms.save
      redirect_to("/top")
    end
  end
  def destroy6
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_2_5 = 0
    if @rooms.save
      redirect_to("/top")
    end
  end
  def destroy7
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_2_7 = 0
    if @rooms.save
      redirect_to("/top")
    end
  end
  def destroy8
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_3_2 = 0
    if @rooms.save
      redirect_to("/top")
    end
  end
  def destroy9
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_3_4 = 0
    if @rooms.save
      redirect_to("/top")
    end
  end
  def destroy10
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_3_6 = 0
    if @rooms.save
      redirect_to("/top")
    end
  end
  def destroy11
    @rooms = Room.find_by(id: params[:id])
    @rooms.seat_3_8 = 0
    if @rooms.save
      redirect_to("/top")
    end
  end
end
