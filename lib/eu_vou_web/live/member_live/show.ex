defmodule EuVouWeb.MemberLive.Show do
  use EuVouWeb, :live_view

  alias EuVou.Events

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  @impl true
  def handle_params(%{"id" => id}, _, socket) do
    {:noreply,
     socket
     |> assign(:page_title, page_title(socket.assigns.live_action))
     |> assign(:member, Events.get_member!(id))}
  end

  defp page_title(:show), do: "Show Member"
  defp page_title(:edit), do: "Edit Member"
end
