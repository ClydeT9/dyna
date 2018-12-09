class ProjetsController < ApplicationController
  before_action :set_projet, only: [:show, :edit, :update, :destroy]
  
  # GET /projets
  # GET /projets.json
  def index
    @projets_all = Projet.all.where.not(id: [1,2,3,4,5,6,7,8])
    @projets_home = Projet.all.where(id: [5,6,7,8])
    @projets4 = Projet.where(id:4)
  end

  # GET /projets/1
  # GET /projets/1.json
  def show
  end
  # GET /projets/new
  def new
    @projet = Projet.new
  end

  # GET /projets/1/edit
  def edit
  end

  # POST /projets
  # POST /projets.json
  def create
    @projet = Projet.new(projet_params)

    respond_to do |format|
      if @projet.save
        format.html { redirect_to action: "index", notice: 'projet was successfully created.' }
        format.json { render :show, status: :created, location: @projet }
      else
        format.html { render :new }
        format.json { render json: @projet.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end
  # PATCH/PUT /projets/1
  # PATCH/PUT /projets/1.json
  def update
    respond_to do |format|
      if @projet.update(projet_params)
        format.html { redirect_to action: "index" }
        format.json { render :show, status: :ok, location: @projet }
      else
        format.html { render :edit }
        format.json { render json: @projet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projets/1
  # DELETE /projets/1.json
  def destroy
    @projet.destroy
    respond_to do |format|
      format.html { redirect_to projets_url, notice: 'Projet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  def delete_image_attachment
    @image = ActiveStorage::Attachment.find(params[:id])
    @image.purge
    redirect_back(fallback_location: projets_path)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projet
      @projet = Projet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projet_params
      params.fetch(:projet).permit(:title, :body,:bodyen, :titleen, images: [])
    end
end
