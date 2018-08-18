module ApplicationHelper
  def page_title
    title = "incRude" #ここにデフォルトの名前を入れてください。
    title = @page_title + " - " + title if @page_title
    title
  end
end