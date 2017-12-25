# BlogpostController handles blog post CRUD operations
class BlogpostController < APIController
  # Lists all existing blog posts, paginated by 5
  def index
    @blogposts = Blogpost.page params[:page]
    render json: @blogposts
  end

  # Creates a new blog post with the provided title and content
  def create
    render json: { content: params[:blogpost] }
  end

  # Returns a blog post
  def show
    render json: { content: 'Not implemented yet..' }
  end

  # Updates either the title or content (or both) of a blog post
  def update
    render json: { content: 'Not implemented yet..' }
  end

  # Deletes the specified blog post
  def destroy
    render json: { content: 'Not implemented yet..' }
  end
end
