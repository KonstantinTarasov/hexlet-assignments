# frozen_string_literal: true

# BEGIN
def compare_versions(version_1, version_2)
  a1 = version_1.split('.').map { |s| s.to_i }
  a2 = version_2.split('.').map { |s| s.to_i }

  a1 <=> a2
end
# END
