class EventsController < ApplicationController
	def index
		@events = Event.all	
	end

	def create
		@event = Event.create(event_params)
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
	end

	def event_params
		params.require(:event).permit(:start, :end, :description, :pooped, :comment)
	end
end
