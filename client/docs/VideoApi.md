# CloudmersiveVideoApiClient::VideoApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**video_convert_to_gif**](VideoApi.md#video_convert_to_gif) | **POST** /video/convert/to/gif | Convert Video to Animated GIF format.
[**video_convert_to_mov**](VideoApi.md#video_convert_to_mov) | **POST** /video/convert/to/mov | Convert Video to MOV format.
[**video_convert_to_mp4**](VideoApi.md#video_convert_to_mp4) | **POST** /video/convert/to/mp4 | Convert Video to MP4 format.
[**video_convert_to_webm**](VideoApi.md#video_convert_to_webm) | **POST** /video/convert/to/webm | Convert Video to WEBM format.
[**video_get_info**](VideoApi.md#video_get_info) | **POST** /video/convert/get-info | Get detailed information about a video or audio file


# **video_convert_to_gif**
> String video_convert_to_gif(input_file, opts)

Convert Video to Animated GIF format.

Automatically detect video file format and convert it to animated GIF format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Maximum output file size is 50GB. Default height is 250 pixels, while preserving the video's aspect ratio.

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

api_instance = CloudmersiveVideoApiClient::VideoApi.new

input_file = File.new('/path/to/file.txt') # File | Input file to perform the operation on.

opts = { 
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  max_width: 56, # Integer | Optional; Maximum width of the output video, up to the original video width. Defaults to 250 pixels.
  max_height: 56, # Integer | Optional; Maximum height of the output video, up to the original video width. Defaults to 250 pixels.
  preserve_aspect_ratio: true, # BOOLEAN | Optional; If false, the original video's aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true.
  frame_rate: 56, # Integer | Optional; Specify the frame rate of the output video. Defaults to 24 frames per second.
  extend_processing_time: true, # BOOLEAN | Optional; If true, will allow additional processing time for the video file conversion, using one API call per additional minute over the 5 minute default processing time, up to a maximum of 25 total minutes. This is generally necessary for files larger than 500 MB or longer than 30 minutes.
  start_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional; Specify the desired starting time of the GIF video in TimeSpan format.
  time_span: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional; Specify the desired length of the GIF video in TimeSpan format. Limit is 30 minutes.
}

begin
  #Convert Video to Animated GIF format.
  result = api_instance.video_convert_to_gif(input_file, opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_convert_to_gif: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **max_width** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to 250 pixels. | [optional] 
 **max_height** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to 250 pixels. | [optional] 
 **preserve_aspect_ratio** | **BOOLEAN**| Optional; If false, the original video&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional] 
 **frame_rate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to 24 frames per second. | [optional] 
 **extend_processing_time** | **BOOLEAN**| Optional; If true, will allow additional processing time for the video file conversion, using one API call per additional minute over the 5 minute default processing time, up to a maximum of 25 total minutes. This is generally necessary for files larger than 500 MB or longer than 30 minutes. | [optional] 
 **start_time** | **DateTime**| Optional; Specify the desired starting time of the GIF video in TimeSpan format. | [optional] 
 **time_span** | **DateTime**| Optional; Specify the desired length of the GIF video in TimeSpan format. Limit is 30 minutes. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **video_convert_to_mov**
> String video_convert_to_mov(input_file, opts)

Convert Video to MOV format.

Automatically detect video file format and convert it to MOV format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Maximum output file size is 50GB.

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

api_instance = CloudmersiveVideoApiClient::VideoApi.new

input_file = File.new('/path/to/file.txt') # File | Input file to perform the operation on.

opts = { 
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  max_width: 56, # Integer | Optional; Maximum width of the output video, up to the original video width. Defaults to original video width.
  max_height: 56, # Integer | Optional; Maximum height of the output video, up to the original video width. Defaults to original video height.
  preserve_aspect_ratio: true, # BOOLEAN | Optional; If false, the original video's aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true.
  frame_rate: 56, # Integer | Optional; Specify the frame rate of the output video. Defaults to original video frame rate.
  quality: 56, # Integer | Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50.
  extend_processing_time: true # BOOLEAN | Optional; If true, will allow additional processing time for the video file conversion, using one API call per additional minute over the 5 minute default processing time, up to a maximum of 25 total minutes. This is generally necessary for files larger than 500 MB or longer than 30 minutes.
}

begin
  #Convert Video to MOV format.
  result = api_instance.video_convert_to_mov(input_file, opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_convert_to_mov: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **max_width** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional] 
 **max_height** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional] 
 **preserve_aspect_ratio** | **BOOLEAN**| Optional; If false, the original video&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional] 
 **frame_rate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional] 
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional] 
 **extend_processing_time** | **BOOLEAN**| Optional; If true, will allow additional processing time for the video file conversion, using one API call per additional minute over the 5 minute default processing time, up to a maximum of 25 total minutes. This is generally necessary for files larger than 500 MB or longer than 30 minutes. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **video_convert_to_mp4**
> String video_convert_to_mp4(input_file, opts)

Convert Video to MP4 format.

Automatically detect video file format and convert it to MP4 format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Maximum output file size is 50GB.

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

api_instance = CloudmersiveVideoApiClient::VideoApi.new

input_file = File.new('/path/to/file.txt') # File | Input file to perform the operation on.

opts = { 
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  max_width: 56, # Integer | Optional; Maximum width of the output video, up to the original video width. Defaults to original video width.
  max_height: 56, # Integer | Optional; Maximum height of the output video, up to the original video width. Defaults to original video height.
  preserve_aspect_ratio: true, # BOOLEAN | Optional; If false, the original video's aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true.
  frame_rate: 56, # Integer | Optional; Specify the frame rate of the output video. Defaults to original video frame rate.
  quality: 56, # Integer | Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50.
  extend_processing_time: true # BOOLEAN | Optional; If true, will allow additional processing time for the video file conversion, using one API call per additional minute over the 5 minute default processing time, up to a maximum of 25 total minutes. This is generally necessary for files larger than 500 MB or longer than 30 minutes.
}

begin
  #Convert Video to MP4 format.
  result = api_instance.video_convert_to_mp4(input_file, opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_convert_to_mp4: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **max_width** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional] 
 **max_height** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional] 
 **preserve_aspect_ratio** | **BOOLEAN**| Optional; If false, the original video&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional] 
 **frame_rate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional] 
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional] 
 **extend_processing_time** | **BOOLEAN**| Optional; If true, will allow additional processing time for the video file conversion, using one API call per additional minute over the 5 minute default processing time, up to a maximum of 25 total minutes. This is generally necessary for files larger than 500 MB or longer than 30 minutes. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **video_convert_to_webm**
> String video_convert_to_webm(input_file, opts)

Convert Video to WEBM format.

Automatically detect video file format and convert it to WEBM format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Maximum output file size is 50GB.

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

api_instance = CloudmersiveVideoApiClient::VideoApi.new

input_file = File.new('/path/to/file.txt') # File | Input file to perform the operation on.

opts = { 
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  max_width: 56, # Integer | Optional; Maximum width of the output video, up to the original video width. Defaults to original video width.
  max_height: 56, # Integer | Optional; Maximum height of the output video, up to the original video width. Defaults to original video height.
  preserve_aspect_ratio: true, # BOOLEAN | Optional; If false, the original video's aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true.
  frame_rate: 56, # Integer | Optional; Specify the frame rate of the output video. Defaults to original video frame rate.
  quality: 56, # Integer | Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50.
  extend_processing_time: true # BOOLEAN | Optional; If true, will allow additional processing time for the video file conversion, using one API call per additional minute over the 5 minute default processing time, up to a maximum of 25 total minutes. This is generally necessary for files larger than 500 MB or longer than 30 minutes.
}

begin
  #Convert Video to WEBM format.
  result = api_instance.video_convert_to_webm(input_file, opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_convert_to_webm: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **max_width** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional] 
 **max_height** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional] 
 **preserve_aspect_ratio** | **BOOLEAN**| Optional; If false, the original video&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional] 
 **frame_rate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional] 
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional] 
 **extend_processing_time** | **BOOLEAN**| Optional; If true, will allow additional processing time for the video file conversion, using one API call per additional minute over the 5 minute default processing time, up to a maximum of 25 total minutes. This is generally necessary for files larger than 500 MB or longer than 30 minutes. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **video_get_info**
> String video_get_info(input_file, opts)

Get detailed information about a video or audio file

Retrieve detailed information about a video or audio file, including format, dimensions, file size, bit rate, duration and start time. Compatible with many formats, including: AVI, ASF, FLV, GIF, MP4, MPEG/MPG, Matroska/WEBM, MOV, AIFF, ASF, CAF, MP3, MP2, MP1, Ogg, OMG/OMA, and WAV. Uses 1 API call per 10 MB of file size.

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

api_instance = CloudmersiveVideoApiClient::VideoApi.new

input_file = File.new('/path/to/file.txt') # File | Input file to perform the operation on.

opts = { 
  file_url: 'file_url_example' # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
}

begin
  #Get detailed information about a video or audio file
  result = api_instance.video_get_info(input_file, opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_get_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



