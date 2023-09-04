class Api::V1::ProductsController < Applicationcontroller 
    def index
        product = Product.all
        render json: product , status: 200
    end

    def show 
        product = Product.find_by(id: params[:id])
        if product 
            render json: product , status: 200
        else 
            render json: {error: "Not found"}
        end
    end

    def create
    end

    private
    
    def prod_params
        params.require()
    end
end