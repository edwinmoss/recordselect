require 'record_select'
require 'record_select/extensions/localization'
require 'record_select/extensions/active_record'
require 'record_select/extensions/routing_mapper'
require 'record_select/actions'
require 'record_select/conditions'
require 'record_select/config'
require 'record_select/form_builder'
require 'record_select/helpers/record_select_helper'
require 'record_select/engine' unless defined? RECORD_SELECT_PLUGIN

ActionController::Base.send(:include, RecordSelect)
ActionView::Base.send(:include, RecordSelectHelper)
ActionView::Helpers::FormBuilder.send(:include, RecordSelect::FormBuilder)
