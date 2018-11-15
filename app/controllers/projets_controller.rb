class ProjetsController < ApplicationController
  before_action :set_projet, only: [:show, :edit, :update, :destroy]

  # GET /projets
  # GET /projets.json
  def index
    @projets_all = Projet.all.where.not(id: [1,2])
    @projets = Projet.where(id:1)
    @projets1 = Projet.where(id:2)
    @projets2 = Projet.where(id:3)
    @projets3 = Projet.where(id:4)
    @projets4 = Projet.where(id:5)
    @projets5 = Projet.where(id:6)
    @projets6 = Projet.where(id:7)
    @projets7 = Projet.where(id:8)
  end

  # GET /projets/1
  # GET /projets/1.json
  def show
    @photos = @projet.photos
  end
  def upload_photo
  end
  # GET /projets/new
  def new
    @projet = Projet.new
  end

  # GET /projets/1/edit
  def edit
    @photos = @projet.photos
  end

  # POST /projets
  # POST /projets.json
  def create
    @projet = Projet.new(projet_params)
      if @projet.save
        if params[:images]
            params[:images].each do |i|
                @projet.photos.create(image: i)
            end
        end
        @photos = @projet.photos
        redirect_to edit_projet_path(@projet), notice:"Votre logiciel a été ajouté avec succès" 
  else
       render :new
  end
  end

  def edit
    @photos = @projet.photos
  end
  # PATCH/PUT /projets/1
  # PATCH/PUT /projets/1.json
  def update
    if @projet.update(projet_params)
      if params[:images]
          params[:images].each do |i|
              @projet.photos.create(image: i)
          end
      end
     redirect_to edit_projet_path(@projet), notice:"Modification enregistrée..."
 else
     render :edit
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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_projet
      @projet = Projet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def projet_params
      params.fetch(:projet).permit(:title, :body)
    end
end
