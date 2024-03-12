defmodule EuVou.Repo do
  use Ecto.Repo,
    otp_app: :eu_vou,
    adapter: Ecto.Adapters.SQLite3
end
