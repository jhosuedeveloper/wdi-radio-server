class SongsController < ApplicationController

  def index
    @songs = Song.all

    respond_to do |format|
      format.html { render :index }
      format.json { render json: @songs}
    end

  end

# -----------------------------------------
# -----------------------------------------


  def new
    @song = Song.new
  end

  def create
    @song = Song.new(passing_info)
    respond_to do |format|
      if @song.save!
        format.html { redirect_to @song, notice: 'song was successfully created.' }
        format.json { render json: @song, status: :created, location: @song }
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end
  end

  # -----------------------------------------
  # -----------------------------------------
def edit
@song = Song.find(params[:id])
end


def destroy
@song = Song.find(params[:id])
@song.destroy

end


def update
  @song = Song.find(params[:id])

  respond_to do |format|
    if @song.update!(passing_info)
      format.html {redirect_to @song, notice: 'Comment was successfully updated.'}
      format.json {render json: @song}
    else
      format.html { render :new }
      format.json { render json: @song.erros, status: :unprocessable_entity}
    end

  end
end





  # -----------------------------------------
  # -----------------------------------------

  def show
    @song = Song.find(params[:id])

    respond_to do |format|
      format.html {render :show}
      format.json {render json: @song}
    end

  end








  private

  def passing_info
    params.require(:song).permit(:title, :album, :preview_url )
  end



end
