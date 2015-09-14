class BoardsController < ApplicationsController

	def index
		@board = Board.first
	end

end