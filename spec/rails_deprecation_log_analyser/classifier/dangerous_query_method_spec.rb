# frozen_string_literal: true

require 'spec_helper'
require 'rails_deprecation_log_analyser/classifier/shared_examples'

module RailsDeprecationLogAnalyser
  module Classifier
    RSpec.describe 'dangerous_query_method' do
      it_behaves_like 'a simple classifier' do
        let(:classifier_name) { 'dangerous_query_method' }
        let(:deprecation_warning) { 'Dangerous query method (method whose arguments are used as raw SQL) called with non-attribute argument(s).' }
      end
    end
  end
end
