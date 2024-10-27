local function load(module)
  local success, err = pcall(require, module)
  if not success then
    print(('Something went wrong while trying to load %s: %s'):format(module, err))
  end
end

load('config.keymap')
load('config.options')
