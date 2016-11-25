Ohai.plugin(:Iptables) do
  provides "iptables"

  collect_data(:default) do
    iptables Mash.new
    `iptables -S`.each_line.with_index {|line, i| iptables[i] = line }
  end
end
