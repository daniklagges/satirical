User.create(email: "admin@example.com", password: "password", role: 0)
user = User.first

5.times do |i|
  article = user.articles.create(title: "Artículo #{i + 1}", content: "Este es el contenido del artículo #{i + 1}.")
  3.times { article.comments.create(content: "Comentario #{i + 1}", user: user) }
end
