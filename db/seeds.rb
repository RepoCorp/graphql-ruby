require 'factory_bot'

nike = nil

if Manufacturer.count.zero?
  nike = Manufacturer.create(name: 'Nike', description: 'NIKE, Inc. engages in the design, development, marketing, and sale of athletic footwear, apparel, accessories, equipment, and services. ... The Converse segment designs, markets, licenses, and sells casual sneakers, apparel, and accessories. The Corporate segment consists of unallocated general and administrative expenses.')

  Manufacturer.create(name: 'Ferragamo', description: "Salvatore Ferragamo SpA is an Italy-based company engaged in fashion industry. The Company mainly creates, develops and produces textiles goods and shoes. The Company's products categories are responsible for the manufacture and sale of footwear, leather goods, clothing and accessories for men and women.")
end

products = []

if Product.count.zero?
  products << Product.create(name: 'Nike Free RN 2019 iD', price: 120, description: "With a stretchable knit in the upper, the Nike Flex RN 2019 makes every run comfortable as it expands and contracts along with your foot. Dual-density foam gives you cushioned comfort for pounding out the miles, while grooves in the outsole provide flexibility from heel to toe.", manufacturer: nike, qty: 58, photo_url: "https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/0ca36a60-0931-497f-b9b3-7a3a96b36ac9/flex-rn-2019-running-shoe-XxTKP5.jpg")

  products << Product.create(name: 'Nike React Presto Premium', price: 120, description: "The Nike React Presto Premium features an innovative React foam midsole that delivers a futuristic look and bouncy, lightweight feel for all-day comfort with a whole lot of personality.", manufacturer: nike, qty: 69, photo_url: "https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/crub4gnk5xacgyvg05wz/react-presto-premium-mens-shoe-8gSr9m.jpg")

  products << Product.create(name: 'Nike Air VaporMax Flyknit 3', price: 120, description: "Be bouncy and buoyant in the Nike Air VaporMax Flyknit 3. A high fashion–inspired upper features flowing lines of breathable, stretchable Flyknit construction. Revolutionary VaporMax Air technology keeps a spring in your step with toe-to-heel cushioning.", manufacturer: nike, qty: 32, photo_url: "https://c.static-nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/624e50b0-2162-48dd-9455-6e26d285dbbc/air-vapormax-flyknit-3-womens-shoe-ZHCbvC.jpg")
end

users = []

if User.count.zero?
  users << User.create(name: 'Rodrigo Nobel', email: 'rodrigo@example.com', password_digest: '123')
  users << User.create(name: 'Amelia Tabares', email: 'amelia@example.com', password_digest: '123')
  users << User.create(name: 'Ernesto Diaz', email: 'ernesto@example.com', password_digest: '123')
end

if Review.count.zero?
  Review.create(score: 3, comment: "The shoe is pretty comfortable so far.", user: users[0], product: products[0])
  Review.create(score: 5, comment: "Perfect for someone who has to be on their feet all day.", user: users[0], product: products[0])
  Review.create(score: 1, comment: "WAY too small", user: users[1], product: products[1])
  Review.create(score: 4, comment: "I purchased this shoe because of the style and color. I liked it. Will definitely purchase other colors.", user: users[1], product: products[2])
  Review.create(score: 5, comment: "My wife LOVES her sneakers!!! ", user: users[1], product: products[0])
  Review.create(score: 2, comment: "This shoe is uncomfortable at first.", user: users[2], product: products[2])
  Review.create(score: 3, comment: "Good looking shoe,needs better insoles.", user: users[2], product: products[1])
end
