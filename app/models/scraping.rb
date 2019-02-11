class Scraping
  def self.model_images
    agent = Mechanize.new
    
    current_page = agent.get("https://wear.jp/takahashiai/")
    elements = current_page.search('#main_list img')
    
    elements.each do |ele|
      # imageを取得してDBに保存
      image =  ele.get_attribute('data-original')
      model = Model.new(name: "高橋愛", image: image)
      model.save
    end
  end
  
end