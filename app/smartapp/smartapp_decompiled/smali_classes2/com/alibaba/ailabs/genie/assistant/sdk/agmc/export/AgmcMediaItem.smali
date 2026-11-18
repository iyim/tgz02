.class public Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;
.super Lorg/json/JSONObject;
.source "AgmcMediaItem.java"


# instance fields
.field private audioUrl:Ljava/lang/String;

.field private exclusive:Z

.field private extraData:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getAudioUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->audioUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExtraData()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->extraData:Ljava/lang/String;

    return-object v0
.end method

.method public isExclusive()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->exclusive:Z

    return v0
.end method

.method public setAudioUrl(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "audioUrl"

    .line 58
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->audioUrl:Ljava/lang/String;

    return-void
.end method

.method public setExclusive(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "exclusive"

    .line 38
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 39
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->exclusive:Z

    return-void
.end method

.method public setExtraData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "extraData"

    .line 78
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/agmc/export/AgmcMediaItem;->extraData:Ljava/lang/String;

    return-void
.end method
