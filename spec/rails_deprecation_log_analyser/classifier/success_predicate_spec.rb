# frozen_string_literal: true

require 'spec_helper'
require 'rails_deprecation_log_analyser/classifier/shared_examples'

module RailsDeprecationLogAnalyser
  module Classifier
    RSpec.describe 'success_predicate' do
      it_behaves_like 'a simple classifier' do
        let(:classifier_name) { 'success_predicate' }
        let(:deprecation_warning) { 'The success? predicate is deprecated and will be removed in Rails 6.0. Please use successful? as provided by Rack::Response::Helpers.' }
      end
    end
  end
end
