class BehaviorsController < ApplicationController
    def index
        behaviors = Behavior.all
        render json: behaviors
    end

    def show
        behavior = Behavior.find_by_id(params[:id])
        render json: behavior
    end

    def create
        behavior = behavior.new(behavior_params)
        if behavior.save
            render json: behavior
        else
            render json: {error: "Couldn't save behavior"}
        end
    end

    def update
        behavior = Behavior.find_by_id(params[:id])
        if behavior.update(behavior_params)
            render json: behavior
        else
            render json: {error: "Couldn't update"}
        end
    end

    def destroy
        behavior = Behavior.find_by_id(params[:id])
        Behavior.destroy
        render json: {message: "Behavior deleted"}
    end


    private

    def behavior_params
        params.require(:behavior).permit(:behavior_notes, :date, :student_id, :student_name)
    end
end
