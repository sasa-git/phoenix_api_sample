defmodule PhoenixApiSampleWeb.Router do
  use PhoenixApiSampleWeb, :router

  # pipelineはルーティングの接続情報を設定
  # ルーティングの確認は`mix phx.routes`
  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PhoenixApiSampleWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  scope "/", PhoenixApiSampleWeb do
    pipe_through :api

    resources "/v1/address", AddressController, only: [:index]
  end

  # Other scopes may use custom stacks.
  # scope "/api", PhoenixApiSampleWeb do
  #   pipe_through :api
  # end
end
