return {
    "navarasu/onedark.nvim",
    priority = 1000,
    config = function()
        require('onedark').setup {
            style = 'dark',
            transparent = true, -- Show/hide background
            term_colors = true  -- Change terminal color as per the selected theme style
        }
        require('onedark').load()
    end
}
