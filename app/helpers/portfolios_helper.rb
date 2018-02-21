module PortfoliosHelper
	def image_generator(height:, width:)
		"http://placehold.it/#{height}x#{width}"
	end

	def portfolio_img img, type
		if img.model.main_image? || img.model.thumb_image?
			img
		elsif type == 'thumb'
			image_generator(height: '200', width: '200')
		elsif type == 'main'
			image_generator(height: '500', width: '500')
		end
	end
end

