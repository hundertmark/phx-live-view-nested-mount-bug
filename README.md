# Minimal example to test crash in nested mount

Run `iex -S mix phx.server` and open `http://localhost:4000` in a browser. Observe messages on websocket.

In iex run `Nested.send(:raise)` to cause a raise in the nested live-view's `handle_info`. This will kill the nested live-view but the parent recovers and re-mounts it's child.

If you instead run `Nested.send(:kill)`, the nested live-view will raise an exception in it's mount callback as well. Now the parent dies as well. Intended behviour would be a disconnected re-mount of the root live-view.