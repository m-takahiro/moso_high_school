class RegistrationController < ApplicationController
  def form
  end
  def register
      @actress = Actress.new(
        name:params[:name],
        category:params[:category])
        if @actress.save && params[:image] && params[:image1] && params[:image2] && params[:image3]
           @actress.image_right_name = "#{@actress.id}_right.jpg"
           @actress.image_left_name = "#{@actress.id}_left.jpg"
           @actress.image_front_name = "#{@actress.id}_front.jpg"
           @actress.image_back_name = "#{@actress.id}_back.jpg"

           image = params[:image]
           image1 = params[:image1]
           image2 = params[:image2]
           image3 = params[:image3]

           File.binwrite(
             "public/actress_photos/#{@actress.image_right_name}",image.read
           )
           File.binwrite(
             "public/actress_photos/#{@actress.image_left_name}",image1.read
           )
           File.binwrite(
             "public/actress_photos/#{@actress.image_front_name}",image2.read
           )
           File.binwrite(
             "public/actress_photos/#{@actress.image_back_name}",image3.read
           )
           @actress.save
           redirect_to("/top")
         else
              @error_message = "登録内容に誤りがあります"
              render("/registration/form")
         end

  end
end
