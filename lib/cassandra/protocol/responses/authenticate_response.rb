# encoding: utf-8

#--
# Copyright DataStax, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#++

module Cassandra
  module Protocol
    class AuthenticateResponse < Response
      # @private
      RESPONSE_TYPES[0x03] = self

      attr_reader :authentication_class

      def initialize(authentication_class)
        @authentication_class = authentication_class
      end

      def to_s
        %(AUTHENTICATE #{authentication_class})
      end
    end
  end
end
