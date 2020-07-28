class CatsController < ApplicationController
    before_action :find_cat, only: [:show, :edit, :update, :destroy]
    def index
        @cat = Cat.all
    end
    def new
        @cat = Cat.new
    end
    
    def create
        @cat = Cat.new(cat_params)
        if @cat.save
            redirect_to cats_path, notice: "新增成功"
        else
            render :new
        end
    end
    def show
    end
    def edit
    end
    def update
        if @cat.update(cat_params)
            redirect_to cats_path, notice: "編輯成功"
        else
            render :edit
        end
    end
    def destroy
        @cat.destroy
        redirect_to cats_path, notice: "刪除成功"
    end

    private
    def cat_params
        params.require(:cat).permit(:title, :description, :publish_date)
    end
    def find_cat
        @cat = Cat.find(params[:id])
    end


end