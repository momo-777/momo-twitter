class DiariesController < ApplicationController
    def index
      @diaries = Diary.all
    end 

    def new
        @diary = Diary.new
    end

    def create
        diary = Diary.new(diary_params)
        if diary.save
          redirect_to :action => "index"
        else
          redirect_to :action => "new"
        end
      end

      def show
        @diary = Diary.find(params[:id])
      end

      def edit
        @diary = Diary.find(params[:id])
      end
    
      def update
        diary = Diary.find(params[:id])
        if diary.update(diary_params)
          redirect_to :action => "show", :id => diary.id
        else
          redirect_to :action => "new"
        end
      end

      def destroy
        diary = Diary.find(params[:id])
        diary.destroy
        redirect_to action: :index
      end

      private
      def diary_params
        params.require(:diary).permit(:body)
      end
end
