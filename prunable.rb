class Prunable
	def self.from_assets(assets)
		assets.select &method(:is_prunable?)
	end

	def self.is_prunable?(asset)
		asset.date_created < Date.today - 20
	end
end