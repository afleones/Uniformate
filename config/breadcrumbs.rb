crumb :root do
  link "Inicio", root_path
end



crumb :articulos do
  link "Articulos", articulos_path
end

crumb :articulos_new do
   link "Nuevo articulo", articulos_path
   parent :articulos
end

crumb :articulo_show do |articulo|
 link "#{articulo.nombre}", articulo_path(articulo)
 parent :articulos, articulo
end

crumb :articulo_edit do |articulo|
   link "editar articulo: #{articulo.nombre}", edit_articulo_path(articulo)
   parent :articulos, articulo
 end



crumb :categorias do
  link "Categorias", categorias_path
end

crumb :categoria_new do
   link "Nueva categoria", categorias_path
   parent :categorias
end

crumb :categoria_show do |categoria|
 link "#{categoria.nombre}", categoria_path(categoria)
 parent :categorias, categoria
end

crumb :categoria_articulos do |categoria, articulos|
  link "#{categoria.nombre}", categoria_articulos_path
  parent :categorias, categoria, articulos
end

crumb :categoria_edit do |categoria|
   link "editar categoria: #{categoria.nombre}", edit_categoria_path(categoria)
   parent :categorias, categoria
 end



crumb :tallas do
  link "Tallas", tallas_path
end

crumb :talla_new do
   link "Nueva talla", tallas_path
   parent :tallas
end

crumb :talla_show do |talla|
 link "#{talla.nombre}", talla_path(talla)
 parent :tallas, talla
end

crumb :talla_edit do |talla|
   link "editar talla: #{talla.nombre}", edit_talla_path(talla)
   parent :tallas, talla
 end



crumb :especialidades do
  link "Especialidades", especialidades_path
end

crumb :especialidad_new do
   link "Nueva especialidad", especialidades_path
   parent :especialidades
end

crumb :especialidad_show do |especialidad|
 link "#{especialidad.nombre}", especialidad_path(especialidad)
 parent :especialidades, especialidad
end

crumb :especialidad_edit do |especialidad|
   link "editar especialidad: #{especialidad.nombre}", edit_especialidad_path(especialidad)
   parent :especialidades, especialidad
 end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).
