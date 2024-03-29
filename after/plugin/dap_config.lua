require("dapui").setup()
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.after.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.after.event_exited["dapui_config"] = function()
	dapui.close()
end
vim.keymap.set("n", "<leader>dt", ':DapToggleBreakboing<CR>')
vim.keymap.set("n", "<leader>dx", ':DapTerminate<CR>')
vim.keymap.set("n", "<leader>do", ':DapStepOver<CR>')
