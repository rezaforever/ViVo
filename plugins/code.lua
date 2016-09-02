local function run(msg, matches)
  local text = '<code>'..matches[1]..'</code>'
  local b = 1

  while b ~= 0 do
    text = text:trim()
    text,b = text:gsub('^.+','')
  end
  return text
end

return {
    patterns = {
    "^[.*]+(.+)$"
  }, 
  run = run 
}
