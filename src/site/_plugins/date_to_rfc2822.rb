# Copyright 2014 Google Inc. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#    http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'time'

module RFC2822Filter
  def date_to_rfc2822(input)
    if input == 'now'
      Time.new.rfc2822
    else
      # input might be a date and not a string
      Time.parse(input.to_s).rfc2822
    end
  end
end

Liquid::Template.register_filter(RFC2822Filter)