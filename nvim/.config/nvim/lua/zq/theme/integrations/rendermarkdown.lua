local colors = require("zq.theme.monochrome.palette")

local highlights = {
	RenderMarkdownH1Bg = { bg = colors.markdown_heading_bg, fg = colors.markdown_heading_fg },
	RenderMarkdownH2Bg = { bg = colors.markdown_heading_bg, fg = colors.markdown_heading_fg },
	RenderMarkdownH3Bg = { bg = colors.markdown_heading_bg, fg = colors.markdown_heading_fg },
	RenderMarkdownH4Bg = { bg = colors.markdown_heading_bg, fg = colors.markdown_heading_fg },
	RenderMarkdownH5Bg = { bg = colors.markdown_heading_bg, fg = colors.markdown_heading_fg },
	RenderMarkdownH6Bg = { bg = colors.markdown_heading_bg, fg = colors.markdown_heading_fg },
	RenderMarkdownBullet = { fg = colors.base0B },
	RenderMarkdownUnchecked = { fg = colors.markdown_heading_bg },
	RenderMarkdownChecked = { fg = colors.green },
	RenderMarkdownTableHead = { fg = colors.white },
	RenderMarkdownTableRow = { fg = colors.markdown_heading_bg },
	RenderMarkdownInfo = { fg = colors.blue },
	RenderMarkdownSign = { fg = colors.base0A },
	-- RenderMarkdownSuccess = { fg = colors.blue },
	-- RenderMarkdownHint = { fg = colors.blue },
	-- RenderMarkdownWarn = { fg = colors.blue },
	-- RenderMarkdownError = { fg = colors.blue },
	-- RenderMarkdownQuote = { fg = colors.blue },
}

return highlights
