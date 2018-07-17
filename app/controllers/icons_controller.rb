
class IconsController < ApplicationController
    def create
        @icon = Icon.new(icon_params)
        if @icon.save
            render json: { message: "success", iconId: @icon.id }, status: 200
        else
            render json: { error: @icon.errors.full_messages.join(", ") }, status: 400
        end
    end

    def destroy
        @icon = Icon.find(params[:id])
        if @icon.destroy
            render json: { message: "file deleted from server" }
        else
            render json: { message: @icon.errors.full_messages.join(", ") }
        end
    end

    def list
        user = User.find(params[:user_id])

        iconss = []
        Icon.where(user_id: user.id).each do |icon|
            new_icon = {
                id: icon.id,
                name: icon.avatar_file_name,
                size: icon.avatar_file_size,
                src: icon.avatar(:thumb)
            }
            icons.push(new_icon)
        end
        render json: { avatars: icons }
    end

    private
    def icon_params
    params.fetch(:icon, {}).permit(:avatar,:user_id)
end
end