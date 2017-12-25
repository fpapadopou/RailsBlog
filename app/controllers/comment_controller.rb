# CommentController handles blog post CRUD operations
# TODO: Handle errors and not found exceptions
class CommentController < APIController
  # Lists all comments for the specified blog post (paginated)
  def index
    @blogpost = Blogpost.find(params[:blogpost_id])
    @comments = @blogpost.comments.order(:id).page params[:page]
    render json: @comments
  end

  # Creates a new blog post with the provided title and content
  def create
    @blogpost = Blogpost.find(params[:blogpost_id])

    @comment = @blogpost.comments.create(comment_params)
    render json: @comment
  end

  # Not implemented on purpose
  def show
    render status: 501, json: { errors: ['Action not implemented.'] }
  end

  # Updates an existing comment
  def update
    render status: 501, json: { errors: ['Action not implemented yet!'] }
  end

  # Deletes the specified comment
  def destroy
    render status: 501, json: { errors: ['Action not implemented yet!'] }
  end

  private

  # Only allows permitted params to be used in comment creation
  def comment_params
    params.require(:comment).permit(:user, :text)
  end

end
