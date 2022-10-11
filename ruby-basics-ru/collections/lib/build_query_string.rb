# frozen_string_literal: true

# BEGIN
def build_query_string(params)
  new_params = []
  for key, value in params.sort do
    new_params << "#{key}=#{value}"
  end
  new_params.join('&')
end
# END
