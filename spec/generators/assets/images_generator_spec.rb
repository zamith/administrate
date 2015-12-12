require "rails_helper"
require "generators/administrate/assets/images_generator"
require "support/generator_spec_helpers"

describe Administrate::Generators::Assets::ImagesGenerator, :generator do
  describe "administrate:assets:images" do
    it "copies the images directory into the `administrate` namespace" do
      files = Dir.glob("app/assets/images/administrate/**/*")

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
