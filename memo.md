# remote setup > fish_config
1. ssh user@host
2. fish_config
3. grep href /tmp/web_config~~~.html
  * e.x.) <p><a href="http://localhost:8001/d78e7211a8e16bc094ffb5d0424b5dda/">Start the Fish Web config</a></p>
4. ssh -L 8001:localhost:8001 user@host
5. browse localhost:8001/d78e7211a8e16bc094ffb5d0424b5dda/

