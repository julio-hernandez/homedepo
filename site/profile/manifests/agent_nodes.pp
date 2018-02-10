class profile::agent_nodes{
  include dockeragent
  dockeragent::node {'web.puppet.vm'}
  dockeragent::nide {'db.puppet.vm'}
}
