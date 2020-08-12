# CloudmersiveVideoApiClient::AudioApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**audio_convert_to_aac**](AudioApi.md#audio_convert_to_aac) | **POST** /video/convert/to/aac | Convert Audio File to AAC format.
[**audio_convert_to_m4a**](AudioApi.md#audio_convert_to_m4a) | **POST** /video/convert/to/m4a | Convert Audio File to M4A format.
[**audio_convert_to_mp3**](AudioApi.md#audio_convert_to_mp3) | **POST** /video/convert/to/mp3 | Convert Audio File to MP3 format.
[**audio_convert_to_wav**](AudioApi.md#audio_convert_to_wav) | **POST** /video/convert/to/wav | Convert Audio File to WAV format.


# **audio_convert_to_aac**
> String audio_convert_to_aac(opts)

Convert Audio File to AAC format.

Automatically detect audio file format and convert it to AAC format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```ruby
# load the gem
require 'cloudmersive-video-api-client'
# setup authorization
CloudmersiveVideoApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVideoApiClient::AudioApi.new

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB.
  bit_rate: nil # Object | Optional; Specify the desired bitrate of the converted audio file in kilobytes per second (kB/s). Value may be between 48 and 1,411. By default, the optimal bitrate will be chosen automatically.
}

begin
  #Convert Audio File to AAC format.
  result = api_instance.audio_convert_to_aac(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling AudioApi->audio_convert_to_aac: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **bit_rate** | [**Object**](.md)| Optional; Specify the desired bitrate of the converted audio file in kilobytes per second (kB/s). Value may be between 48 and 1,411. By default, the optimal bitrate will be chosen automatically. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **audio_convert_to_m4a**
> String audio_convert_to_m4a(opts)

Convert Audio File to M4A format.

Automatically detect audio file format and convert it to M4A format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```ruby
# load the gem
require 'cloudmersive-video-api-client'
# setup authorization
CloudmersiveVideoApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVideoApiClient::AudioApi.new

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB.
  bit_rate: nil # Object | Optional; Specify the desired bitrate of the converted audio file in kilobytes per second (kB/s). Value may be between 48 and 1,411. By default, the optimal bitrate will be chosen automatically.
}

begin
  #Convert Audio File to M4A format.
  result = api_instance.audio_convert_to_m4a(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling AudioApi->audio_convert_to_m4a: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **bit_rate** | [**Object**](.md)| Optional; Specify the desired bitrate of the converted audio file in kilobytes per second (kB/s). Value may be between 48 and 1,411. By default, the optimal bitrate will be chosen automatically. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **audio_convert_to_mp3**
> String audio_convert_to_mp3(opts)

Convert Audio File to MP3 format.

Automatically detect audio file format and convert it to MP3 format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```ruby
# load the gem
require 'cloudmersive-video-api-client'
# setup authorization
CloudmersiveVideoApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVideoApiClient::AudioApi.new

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB.
  bit_rate: nil # Object | Optional; Specify the desired bitrate of the converted audio file in kilobytes per second (kB/s). Value may be between 48 and 1,411. By default, the optimal bitrate will be chosen automatically.
}

begin
  #Convert Audio File to MP3 format.
  result = api_instance.audio_convert_to_mp3(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling AudioApi->audio_convert_to_mp3: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **bit_rate** | [**Object**](.md)| Optional; Specify the desired bitrate of the converted audio file in kilobytes per second (kB/s). Value may be between 48 and 1,411. By default, the optimal bitrate will be chosen automatically. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **audio_convert_to_wav**
> String audio_convert_to_wav(opts)

Convert Audio File to WAV format.

Automatically detect audio file format and convert it to WAV format. Supports many input audio formats, including AAC, FLAC, M4A, MP2, MP3, OGG, WMA, and WAV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

### Example
```ruby
# load the gem
require 'cloudmersive-video-api-client'
# setup authorization
CloudmersiveVideoApiClient.configure do |config|
  # Configure API key authorization: Apikey
  config.api_key['Apikey'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Apikey'] = 'Bearer'
end

api_instance = CloudmersiveVideoApiClient::AudioApi.new

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB.
  sample_rate: nil # Object | Optional; Specify the desired sample rate of the converted audio file in kHz. Value may be between 8 and 96. Standard for audio CDs is 44.1, while DVD audio standard is 48. By default, the optimal sample rate will be chosen automatically.
}

begin
  #Convert Audio File to WAV format.
  result = api_instance.audio_convert_to_wav(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling AudioApi->audio_convert_to_wav: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of an audio file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **sample_rate** | [**Object**](.md)| Optional; Specify the desired sample rate of the converted audio file in kHz. Value may be between 8 and 96. Standard for audio CDs is 44.1, while DVD audio standard is 48. By default, the optimal sample rate will be chosen automatically. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



