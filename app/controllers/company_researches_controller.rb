class CompanyResearchesController < ApplicationController
  def index
    @company_researches = CompanyResearch.all

    render("company_researches/index.html.erb")
  end

  def show
    @company_research = CompanyResearch.find(params[:id])

    render("company_researches/show.html.erb")
  end

  def new
    @company_research = CompanyResearch.new

    render("company_researches/new.html.erb")
  end

  def create
    @company_research = CompanyResearch.new

    @company_research.article_link = params[:article_link]
    @company_research.company_id = params[:company_id]
    @company_research.user_id = params[:user_id]

    save_status = @company_research.save

    if save_status == true
      redirect_to("/company_researches/#{@company_research.id}", :notice => "Company research created successfully.")
    else
      render("company_researches/new.html.erb")
    end
  end

  def edit
    @company_research = CompanyResearch.find(params[:id])

    render("company_researches/edit.html.erb")
  end

  def update
    @company_research = CompanyResearch.find(params[:id])

    @company_research.article_link = params[:article_link]
    @company_research.company_id = params[:company_id]
    @company_research.user_id = params[:user_id]

    save_status = @company_research.save

    if save_status == true
      redirect_to("/company_researches/#{@company_research.id}", :notice => "Company research updated successfully.")
    else
      render("company_researches/edit.html.erb")
    end
  end

  def destroy
    @company_research = CompanyResearch.find(params[:id])

    @company_research.destroy

    if URI(request.referer).path == "/company_researches/#{@company_research.id}"
      redirect_to("/", :notice => "Company research deleted.")
    else
      redirect_to(:back, :notice => "Company research deleted.")
    end
  end
end
