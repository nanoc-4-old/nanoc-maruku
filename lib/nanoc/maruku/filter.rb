# encoding: utf-8

require 'maruku'

module Nanoc::Maruku

  class Filter < Nanoc::Filter

    identifier :maruku

    def run(content, params={})
      ::Maruku.new(content, params).to_html
    end

  end

end
