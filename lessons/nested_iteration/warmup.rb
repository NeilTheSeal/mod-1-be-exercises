pet_inventory = {
  kat: %w[cat cat cat],
  bob: %w[fish snake gerbil],
  stoney: %w[cat dog],
  gerri: %w[dog dog],
  jamison: %w[bird dog]
}

p pet_inventory.flatten(-1).reject { |e| e.instance_of?(Symbol) }.uniq.sort
