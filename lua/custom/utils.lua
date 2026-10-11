local Utils = {
  open_changed_files = function ()
    local output = vim.fn.system("git status --short");
    local lines = vim.split(output, '[\r\n]+', { trimempty = true });

    for _, line in ipairs(lines) do
      local status, file = string.match(line, '%s?(%S+)%s?(.+)');

      if not status or not file then
        print("No match in output");
        return;
      end

      if string.find(status, "[M?]") then
        file = string.gsub(file, '^"(.+)"$', '%1');

        vim.cmd("e " .. vim.fn.fnameescape(file));
      end
    end
  end,
};

return Utils;
