# frozen_string_literal: true

# Copyright (C) 2018  Anthony Gargiulo <anthony@agargiulo.com>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.
require 'anyway'
# HACK: We want to File.expand_path in the config files, what's wrong with that?
require 'erb'

module Tcelfer
  # Configuration for tcelfer, thanks to anyway_config
  class Config < Anyway::Config
    config_name :tcelfer
    attr_config(
      db_path: File.join(File.expand_path('../../', __dir__), 'tmp', 'dev_store.json')
    )
  end
end
