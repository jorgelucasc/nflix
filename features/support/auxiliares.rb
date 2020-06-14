module Helpers
    def get_token
        js_script = 'return window.localStorage.getItem("default_auth_token");'
        sleep 3
        page.execute_script(js_script)
    end
end