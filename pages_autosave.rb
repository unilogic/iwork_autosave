#!/usr/bin/env ruby

require 'rubygems'
require 'rbosa'

pages = OSA.app('Pages')
thread = Thread.new do
  while true
    pages.documents.each { |document| 
      pages.save document 
    }
    sleep 120
  end   
end
thread.join