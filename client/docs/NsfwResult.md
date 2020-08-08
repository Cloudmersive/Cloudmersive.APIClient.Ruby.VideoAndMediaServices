# CloudmersiveVideoApiClient::NsfwResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **BOOLEAN** | True if the operation was successful, false otherwise | [optional] 
**highest_classification_result** | **String** | The highest NSFW classification of the video | [optional] 
**highest_score** | **Float** | The highest NSFW score out of all frames scanned | [optional] 
**total_racy_frames** | **Integer** | The total number of potentially \&quot;racy\&quot; frames. | [optional] 
**total_nsfw_frames** | **Integer** | The total number of frames with high probability of NSFW. | [optional] 
**total_frames** | **Integer** | The total number of frames scanned | [optional] 
**nsfw_scanned_frames** | [**Array&lt;NsfwScannedFrame&gt;**](NsfwScannedFrame.md) | The NSFW scanning results for each frame | [optional] 


