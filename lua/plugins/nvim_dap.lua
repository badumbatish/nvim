return {
    'mfussenegger/nvim-dap',

    config = function()
        local dap_ok, dap = pcall(require, "dap")
        if not (dap_ok) then
            print("nvim-dap not installed!")
            return
        end

        require('dap').set_log_level('INFO') -- Helps when configuring DAP, see logs with :DapShowLog

        dap.configurations = {
            python = {
                {
                    type = "python",      -- Which adapter to use
                    name = "Basic Debug", -- Human readable name
                    request = "launch",   -- Whether to "launch" or "attach" to program
                    program = "${file}",  -- The buffer you are focused on when running nvim-dap
                },
            }
        }
    end
}
