# frozen_string_literal: true

require 'spec_helper'
require 'rails_deprecation_log_analyser/classifier/shared_examples'

module RailsDeprecationLogAnalyser
  module Classifier
    RSpec.describe 'delegating_exists_to_arel' do
      it_behaves_like 'a simple classifier' do
        let(:classifier_name) { 'delegating_exists_to_arel' }
        let(:deprecation_warning) { 'Delegating exists to arel is deprecated and will be removed in Rails 6.0.' }
      end
    end
  end
end
