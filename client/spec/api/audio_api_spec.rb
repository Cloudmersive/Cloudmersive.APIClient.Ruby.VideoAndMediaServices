=begin
#videoapi

#The video APIs help you convert, encode, and transcode videos.

OpenAPI spec version: v1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'spec_helper'
require 'json'

# Unit tests for CloudmersiveVideoApiClient::AudioApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AudioApi' do
  before do
    # run before each test
    @instance = CloudmersiveVideoApiClient::AudioApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AudioApi' do
    it 'should create an instance of AudioApi' do
      expect(@instance).to be_instance_of(CloudmersiveVideoApiClient::AudioApi)
    end
  end

  # unit tests for audio_convert_to_aac
  # Convert Audio File to AAC format.
  # Automatically detect audio file format and convert it to AAC format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
  # @param [Hash] opts the optional parameters
  # @option opts [File] :input_file Input file to perform the operation on.
  # @option opts [String] :file_url Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB.
  # @option opts [Integer] :bit_rate Optional; Specify the desired bitrate of the converted audio file in kilobytes per second (kB/s). Value may be between 48 and 1,411. By default, the optimal bitrate will be chosen automatically.
  # @return [String]
  describe 'audio_convert_to_aac test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for audio_convert_to_m4a
  # Convert Audio File to M4A format.
  # Automatically detect audio file format and convert it to M4A format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
  # @param [Hash] opts the optional parameters
  # @option opts [File] :input_file Input file to perform the operation on.
  # @option opts [String] :file_url Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB.
  # @option opts [Integer] :bit_rate Optional; Specify the desired bitrate of the converted audio file in kilobytes per second (kB/s). Value may be between 48 and 1,411. By default, the optimal bitrate will be chosen automatically.
  # @return [String]
  describe 'audio_convert_to_m4a test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for audio_convert_to_mp3
  # Convert Audio File to MP3 format.
  # Automatically detect audio file format and convert it to MP3 format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
  # @param [Hash] opts the optional parameters
  # @option opts [File] :input_file Input file to perform the operation on.
  # @option opts [String] :file_url Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB.
  # @option opts [Integer] :bit_rate Optional; Specify the desired bitrate of the converted audio file in kilobytes per second (kB/s). Value may be between 48 and 1,411. By default, the optimal bitrate will be chosen automatically.
  # @return [String]
  describe 'audio_convert_to_mp3 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for audio_convert_to_wav
  # Convert Audio File to WAV format.
  # Automatically detect audio file format and convert it to WAV format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.
  # @param [Hash] opts the optional parameters
  # @option opts [File] :input_file Input file to perform the operation on.
  # @option opts [String] :file_url Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB.
  # @option opts [Float] :sample_rate Optional; Specify the desired sample rate of the converted audio file in kHz. Value may be between 8 and 96. Standard for audio CDs is 44.1, while DVD audio standard is 48. By default, the optimal sample rate will be chosen automatically.
  # @return [String]
  describe 'audio_convert_to_wav test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
