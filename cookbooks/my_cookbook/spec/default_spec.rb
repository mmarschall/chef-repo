require 'chefspec'
describe 'my_cookbook::default' do
  let(:chef_run) {
    ChefSpec::ServerRunner.new(
      platform:'ubuntu', version:'16.04'
    ).converge(described_recipe)
  }

it 'uses a node attribute as greeting text' do
    chef_run.node.override['my_cookbook']['greeting'] = "Go!"
    expect(chef_run).to render_file('/tmp/greeting.txt').with_content('Go! ubuntu!')
  end
end
