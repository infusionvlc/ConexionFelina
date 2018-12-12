namespace :cleanup do
  desc 'removes stale and inactive cats from the database'
  task products: :environment do
    # Find all the cats older than yesterday, that are not active yet
    stale_cats = Cat.where('DATE(created_at) < DATE(?)', Date.yesterday)
                    .where("status is not 'active'")

    # delete them
    stale_cats.map(&:destroy)
  end
end
