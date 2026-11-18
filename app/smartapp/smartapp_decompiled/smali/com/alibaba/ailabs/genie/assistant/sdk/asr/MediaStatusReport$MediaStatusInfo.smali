.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;
.super Ljava/lang/Object;
.source "MediaStatusReport.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MediaStatusInfo"
.end annotation


# instance fields
.field public albumId:Ljava/lang/String;

.field public audioAlbum:Ljava/lang/String;

.field public audioAnchor:Ljava/lang/String;

.field public audioExt:Ljava/lang/String;

.field public audioId:Ljava/lang/String;

.field public audioLength:Ljava/lang/String;

.field public audioName:Ljava/lang/String;

.field public audioSource:Ljava/lang/String;

.field public categoryId:Ljava/lang/String;

.field public extendInfo:Ljava/lang/String;

.field public playerType:Ljava/lang/String;

.field public progress:Ljava/lang/String;

.field public searchId:Ljava/lang/String;

.field public tagId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;)Lorg/json/JSONObject;
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->getJson()Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private getJson()Lorg/json/JSONObject;
    .locals 3

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "audioId"

    .line 70
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->audioId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "albumId"

    .line 71
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->albumId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "categoryId"

    .line 72
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->categoryId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "tagId"

    .line 73
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->tagId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "searchId"

    .line 74
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->searchId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "audioSource"

    .line 75
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->audioSource:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "audioAnchor"

    .line 76
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->audioAnchor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "audioExt"

    .line 77
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->audioExt:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "audioName"

    .line 78
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->audioName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "audioAlbum"

    .line 79
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->audioAlbum:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "progress"

    .line 80
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->progress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playerType"

    .line 81
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->playerType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "audioLength"

    .line 82
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->audioLength:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extendInfo"

    .line 83
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/MediaStatusReport$MediaStatusInfo;->extendInfo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method
