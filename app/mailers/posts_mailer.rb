class PostsMailer < ApplicationMailer

    # Subject can be set in your I18n file at config/locales/en.yml
    # with the following lookup:
    #
    #   en.posts_mailer.new_post.subject
    #
    def new_post
      post = Post.second
      @post = Post.second
      pdf = WickedPdf.new.pdf_from_string(
        render_to_string('posts/post.html.erb', layout: 'pdf.html.erb')
      )
      attachments["post_#{post.id}.pdf"] = pdf
      @greeting = "Hi"
  
      mail to: "to@example.org"
    end
  end