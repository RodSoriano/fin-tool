class DemosController < ApplicationController
  before_action :set_all_demos, only: %i[ index ]

  # GET /demos or /demos.json
  def index
    render inertia: "demos/index", props: {
      demos: @demos
    }
  end

  # GET /demos/1 or /demos/1.json
  def show; end

  # GET /demos/new
  def new
    @demo = Demo.new
  end

  # GET /demos/1/edit
  def edit; end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_all_demos
      @demos = Demo.all
    end

    # Only allow a list of trusted parameters through.
    def demo_params
      params.require(:demo).permit(:name, :color)
    end
end
