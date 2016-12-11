defmodule AgileTracker.UserController do
  use AgileTracker.Web, :controller
  alias AgileTracker.User

  def new(conn, _params) do
    changeset = User.changeset(%User{})
    render conn, "new.html", changeset: changeset
  end
end
