# CloudmersiveVideoApiClient::VideoApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**video_convert_to_gif**](VideoApi.md#video_convert_to_gif) | **POST** /video/convert/to/gif | Convert Video to Animated GIF format.
[**video_convert_to_mov**](VideoApi.md#video_convert_to_mov) | **POST** /video/convert/to/mov | Convert Video to MOV format.
[**video_convert_to_mp4**](VideoApi.md#video_convert_to_mp4) | **POST** /video/convert/to/mp4 | Convert Video to MP4 format.
[**video_convert_to_still_frames**](VideoApi.md#video_convert_to_still_frames) | **POST** /video/convert/to/still-frames | Convert Video to PNG Still Frames.
[**video_convert_to_webm**](VideoApi.md#video_convert_to_webm) | **POST** /video/convert/to/webm | Convert Video to WEBM format.
[**video_cut_video**](VideoApi.md#video_cut_video) | **POST** /video/cut | Cut a Video to a Shorter Length
[**video_get_info**](VideoApi.md#video_get_info) | **POST** /video/convert/get-info | Get detailed information about a video or audio file
[**video_resize_video**](VideoApi.md#video_resize_video) | **POST** /video/resize/preserveAspectRatio | Resizes a Video Preserving the Original Aspect Ratio.
[**video_resize_video_simple**](VideoApi.md#video_resize_video_simple) | **POST** /video/resize/target | Resizes a Video without Preserving Aspect Ratio.
[**video_scan_for_nsfw**](VideoApi.md#video_scan_for_nsfw) | **POST** /video/scan/nsfw | Scan a Video for NSFW content.
[**video_split_video**](VideoApi.md#video_split_video) | **POST** /video/split | Split a Video into Two Shorter Videos


# **video_convert_to_gif**
> String video_convert_to_gif(opts)

Convert Video to Animated GIF format.

Automatically detect video file format and convert it to animated GIF format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB. Default height is 250 pixels, while preserving the video's aspect ratio.

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

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  max_width: 56, # Integer | Optional; Maximum width of the output video, up to the original video width. Defaults to 250 pixels, maximum is 500 pixels.
  max_height: 56, # Integer | Optional; Maximum height of the output video, up to the original video width. Defaults to 250 pixels, maximum is 500 pixels.
  preserve_aspect_ratio: true, # BOOLEAN | Optional; If false, the original video's aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true.
  frame_rate: 56, # Integer | Optional; Specify the frame rate of the output video. Defaults to 24 frames per second.
  start_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional; Specify the desired starting time of the GIF video in TimeSpan format.
  time_span: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional; Specify the desired length of the GIF video in TimeSpan format. Limit is 30 seconds. Default is 10 seconds.
}

begin
  #Convert Video to Animated GIF format.
  result = api_instance.video_convert_to_gif(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_convert_to_gif: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **max_width** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to 250 pixels, maximum is 500 pixels. | [optional] 
 **max_height** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to 250 pixels, maximum is 500 pixels. | [optional] 
 **preserve_aspect_ratio** | **BOOLEAN**| Optional; If false, the original video&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional] 
 **frame_rate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to 24 frames per second. | [optional] 
 **start_time** | **DateTime**| Optional; Specify the desired starting time of the GIF video in TimeSpan format. | [optional] 
 **time_span** | **DateTime**| Optional; Specify the desired length of the GIF video in TimeSpan format. Limit is 30 seconds. Default is 10 seconds. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **video_convert_to_mov**
> String video_convert_to_mov(opts)

Convert Video to MOV format.

Automatically detect video file format and convert it to MOV format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

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

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  max_width: 56, # Integer | Optional; Maximum width of the output video, up to the original video width. Defaults to original video width.
  max_height: 56, # Integer | Optional; Maximum height of the output video, up to the original video width. Defaults to original video height.
  preserve_aspect_ratio: true, # BOOLEAN | Optional; If false, the original video's aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true.
  frame_rate: 56, # Integer | Optional; Specify the frame rate of the output video. Defaults to original video frame rate.
  quality: 56 # Integer | Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50.
}

begin
  #Convert Video to MOV format.
  result = api_instance.video_convert_to_mov(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_convert_to_mov: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **max_width** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional] 
 **max_height** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional] 
 **preserve_aspect_ratio** | **BOOLEAN**| Optional; If false, the original video&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional] 
 **frame_rate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional] 
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **video_convert_to_mp4**
> String video_convert_to_mp4(opts)

Convert Video to MP4 format.

Automatically detect video file format and convert it to MP4 format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

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

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  max_width: 56, # Integer | Optional; Maximum width of the output video, up to the original video width. Defaults to original video width.
  max_height: 56, # Integer | Optional; Maximum height of the output video, up to the original video width. Defaults to original video height.
  preserve_aspect_ratio: true, # BOOLEAN | Optional; If false, the original video's aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true.
  frame_rate: 56, # Integer | Optional; Specify the frame rate of the output video. Defaults to original video frame rate.
  quality: 56 # Integer | Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50.
}

begin
  #Convert Video to MP4 format.
  result = api_instance.video_convert_to_mp4(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_convert_to_mp4: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **max_width** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional] 
 **max_height** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional] 
 **preserve_aspect_ratio** | **BOOLEAN**| Optional; If false, the original video&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional] 
 **frame_rate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional] 
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **video_convert_to_still_frames**
> StillFramesResult video_convert_to_still_frames(opts)

Convert Video to PNG Still Frames.

Automatically detect video file format and convert it to an array of still frame PNG images. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time.

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

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  max_width: 56, # Integer | Optional; Maximum width of the output video, up to the original video width. Defaults to original video width.
  max_height: 56, # Integer | Optional; Maximum height of the output video, up to the original video width. Defaults to original video height.
  frames_per_second: 8.14 # Float | Optional; How many video frames per second to be returned as PNG images. Minimum value is 0.1, maximum is 60. Default is 1 frame per second. Maximum of 2000 total frames.
}

begin
  #Convert Video to PNG Still Frames.
  result = api_instance.video_convert_to_still_frames(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_convert_to_still_frames: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **max_width** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional] 
 **max_height** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional] 
 **frames_per_second** | **Float**| Optional; How many video frames per second to be returned as PNG images. Minimum value is 0.1, maximum is 60. Default is 1 frame per second. Maximum of 2000 total frames. | [optional] 

### Return type

[**StillFramesResult**](StillFramesResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **video_convert_to_webm**
> String video_convert_to_webm(opts)

Convert Video to WEBM format.

Automatically detect video file format and convert it to WEBM format. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

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

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  max_width: 56, # Integer | Optional; Maximum width of the output video, up to the original video width. Defaults to original video width.
  max_height: 56, # Integer | Optional; Maximum height of the output video, up to the original video width. Defaults to original video height.
  preserve_aspect_ratio: true, # BOOLEAN | Optional; If false, the original video's aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true.
  frame_rate: 56, # Integer | Optional; Specify the frame rate of the output video. Defaults to original video frame rate.
  quality: 56 # Integer | Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50.
}

begin
  #Convert Video to WEBM format.
  result = api_instance.video_convert_to_webm(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_convert_to_webm: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **max_width** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional] 
 **max_height** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional] 
 **preserve_aspect_ratio** | **BOOLEAN**| Optional; If false, the original video&#39;s aspect ratio will not be preserved, allowing customization of the aspect ratio using maxWidth and maxHeight, potentially skewing the video. Default is true. | [optional] 
 **frame_rate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional] 
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **video_cut_video**
> String video_cut_video(opts)

Cut a Video to a Shorter Length

Cuts a video to the specified start and end times. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

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

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  start_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Optional; Specify the desired starting time of the cut video in TimeSpan format.
  time_span: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional; Specify the desired length of the cut video in TimeSpan format. Leave blank to include the rest of the video. Maximum time is 4 hours.
}

begin
  #Cut a Video to a Shorter Length
  result = api_instance.video_cut_video(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_cut_video: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **start_time** | **DateTime**| Optional; Specify the desired starting time of the cut video in TimeSpan format. | [optional] 
 **time_span** | **DateTime**| Optional; Specify the desired length of the cut video in TimeSpan format. Leave blank to include the rest of the video. Maximum time is 4 hours. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **video_get_info**
> MediaInformation video_get_info(opts)

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

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example' # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
}

begin
  #Get detailed information about a video or audio file
  result = api_instance.video_get_info(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_get_info: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 

### Return type

[**MediaInformation**](MediaInformation.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **video_resize_video**
> String video_resize_video(opts)

Resizes a Video Preserving the Original Aspect Ratio.

Resizes a video, while maintaining the original aspect ratio and encoding. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

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

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  max_width: 56, # Integer | Optional; Maximum width of the output video, up to the original video width. Defaults to original video width.
  max_height: 56, # Integer | Optional; Maximum height of the output video, up to the original video width. Defaults to original video height.
  frame_rate: 56, # Integer | Optional; Specify the frame rate of the output video. Defaults to original video frame rate.
  quality: 56, # Integer | Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50.
  extension: 'extension_example' # String | Optional; Specify the file extension of the input video. This is recommended when inputting a file directly, without a file name. If no file name is available and no extension is provided, the extension will be inferred from the file data, which may cause a different extension to be used in the output.
}

begin
  #Resizes a Video Preserving the Original Aspect Ratio.
  result = api_instance.video_resize_video(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_resize_video: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **max_width** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional] 
 **max_height** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional] 
 **frame_rate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional] 
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional] 
 **extension** | **String**| Optional; Specify the file extension of the input video. This is recommended when inputting a file directly, without a file name. If no file name is available and no extension is provided, the extension will be inferred from the file data, which may cause a different extension to be used in the output. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **video_resize_video_simple**
> String video_resize_video_simple(opts)

Resizes a Video without Preserving Aspect Ratio.

Resizes a video without maintaining original aspect ratio, allowing fully customizable dimensions. May cause image skewing. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

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

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  max_width: 56, # Integer | Optional; Maximum width of the output video, up to the original video width. Defaults to original video width.
  max_height: 56, # Integer | Optional; Maximum height of the output video, up to the original video width. Defaults to original video height.
  frame_rate: 56, # Integer | Optional; Specify the frame rate of the output video. Defaults to original video frame rate.
  quality: 56, # Integer | Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50.
  extension: 'extension_example' # String | Optional; Specify the file extension of the input video. This is recommended when inputting a file directly, without a file name. If no file name is available and no extension is provided, the extension will be inferred from the file data, which may cause a different extension to be used in the output.
}

begin
  #Resizes a Video without Preserving Aspect Ratio.
  result = api_instance.video_resize_video_simple(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_resize_video_simple: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **max_width** | **Integer**| Optional; Maximum width of the output video, up to the original video width. Defaults to original video width. | [optional] 
 **max_height** | **Integer**| Optional; Maximum height of the output video, up to the original video width. Defaults to original video height. | [optional] 
 **frame_rate** | **Integer**| Optional; Specify the frame rate of the output video. Defaults to original video frame rate. | [optional] 
 **quality** | **Integer**| Optional; Specify the quality of the output video, where 100 is lossless and 1 is the lowest possible quality with highest compression. Default is 50. | [optional] 
 **extension** | **String**| Optional; Specify the file extension of the input video. This is recommended when inputting a file directly, without a file name. If no file name is available and no extension is provided, the extension will be inferred from the file data, which may cause a different extension to be used in the output. | [optional] 

### Return type

**String**

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



# **video_scan_for_nsfw**
> NsfwResult video_scan_for_nsfw(opts)

Scan a Video for NSFW content.

Automatically detect video file format and scan it for Not Safe For Work (NSFW)/Porn/Racy content. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, OGV, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per frame scanned.

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

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of a video file being scanned. Use this option for files larger than 2GB.
  frames_per_second: 8.14 # Float | Optional; How many video frames per second to be scanned. Minimum value is 0.05 (1 frame per 20 seconds), maximum is 1. Default is 0.33 frame per second (1 frame scanned every 3 seconds). Maximum of 1000 total frames can be scanned, potentially adjusting the framerate for longer videos.
}

begin
  #Scan a Video for NSFW content.
  result = api_instance.video_scan_for_nsfw(opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_scan_for_nsfw: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of a video file being scanned. Use this option for files larger than 2GB. | [optional] 
 **frames_per_second** | **Float**| Optional; How many video frames per second to be scanned. Minimum value is 0.05 (1 frame per 20 seconds), maximum is 1. Default is 0.33 frame per second (1 frame scanned every 3 seconds). Maximum of 1000 total frames can be scanned, potentially adjusting the framerate for longer videos. | [optional] 

### Return type

[**NsfwResult**](NsfwResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml



# **video_split_video**
> SplitVideoResult video_split_video(split_time, opts)

Split a Video into Two Shorter Videos

Cuts a video into two videos based on the specified start time. Supports many input video formats, including AVI, ASF, FLV, MP4, MPEG/MPG, Matroska/WEBM, 3G2, MKV, M4V and MOV. Uses 1 API call per 10 MB of file size. Also uses 1 API call per additional minute of processing time over 5 minutes, up to a maximum of 25 minutes total processing time. Maximum output file size is 50GB.

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

split_time = DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Specify the desired time at which to split the video in TimeSpan format.

opts = { 
  input_file: File.new('/path/to/file.txt'), # File | Input file to perform the operation on.
  file_url: 'file_url_example', # String | Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB.
  time_span: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Optional; Specify the desired length of the second video in TimeSpan format. Leave blank to include the rest of the video. Maximum time is 4 hours.
}

begin
  #Split a Video into Two Shorter Videos
  result = api_instance.video_split_video(split_time, opts)
  p result
rescue CloudmersiveVideoApiClient::ApiError => e
  puts "Exception when calling VideoApi->video_split_video: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **split_time** | **DateTime**| Specify the desired time at which to split the video in TimeSpan format. | 
 **input_file** | **File**| Input file to perform the operation on. | [optional] 
 **file_url** | **String**| Optional; URL of a video file being used for conversion. Use this option for files larger than 2GB. | [optional] 
 **time_span** | **DateTime**| Optional; Specify the desired length of the second video in TimeSpan format. Leave blank to include the rest of the video. Maximum time is 4 hours. | [optional] 

### Return type

[**SplitVideoResult**](SplitVideoResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/octet-stream



