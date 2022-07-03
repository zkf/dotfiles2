local has_packer, packer = pcall(require, 'packer')

if not has_packer then
  -- install packer
  local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  vim.api.nvim_command('!git clone --depth 1 https://github.com/wbthomason/packer.nvim '..install_path)
  vim.api.nvim_command('packadd packer.nvim')
  packer = require('packer')
end

return packer.startup(function()
  use 'wbthomason/packer.nvim'
  use 'ggandor/leap.nvim'
end)
