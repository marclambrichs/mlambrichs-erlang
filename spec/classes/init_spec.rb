require 'spec_helper'
describe 'erlang' do
  context 'with default values for all parameters' do
    it { should contain_class('erlang') }
  end
end
