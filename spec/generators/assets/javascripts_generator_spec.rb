require "rails_helper"
require "generators/administrate/assets/javascripts_generator"
require "support/generator_spec_helpers"

describe Administrate::Generators::Assets::JavascriptsGenerator, :generator do
  describe "administrate:assets:javascripts" do
    it "copies the javascripts directory into the `administrate` namespace" do
      files = Dir.glob("app/assets/javascripts/administrate/**/*")

      run_generator []

      files.each do |copied_file_path|
        if File.file?(copied_file_path)
          expected_contents = File.read(copied_file_path)
          contents = File.read(file(copied_file_path))

          expect(contents).to eq(expected_contents)
        end
      end
    end
  end
end
