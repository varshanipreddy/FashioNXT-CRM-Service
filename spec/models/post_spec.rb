require 'rails_helper'

RSpec.describe Post, :type => :model do
    context "when creating a new post" do
      let(:image_path) { Rails.root.join('spec', 'fixtures', 'test_image1.jfif') }
      
      it "is valid with a title, content, and image" do
        test_post = Post.new(
          title: "My New Post",
          content: "This is my brand new post",
          image: Rack::Test::UploadedFile.new(image_path, 'image/jfif')
        )
        expect(test_post).to be_valid
      end

      it "is invalid without a title" do
        test_post = Post.new(
          content: "This is my brand new post",
          image: Rack::Test::UploadedFile.new(image_path, 'image/jfif')
        )
        expect(test_post).not_to be_valid
      end

      it "is valid without an image" do
        test_post = Post.new(
          title: "My New post",
          content: "This is my brand new post"
        )
        expect(test_post).to be_valid
      end

      it "is invalid without content" do
        test_post = Post.new(
          title: "My New post",
          image: Rack::Test::UploadedFile.new(image_path, 'image/jfif')
        )
        expect(test_post).not_to be_valid
      end
    end
end
