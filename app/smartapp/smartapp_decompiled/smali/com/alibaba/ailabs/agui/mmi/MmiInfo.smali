.class public Lcom/alibaba/ailabs/agui/mmi/MmiInfo;
.super Lcom/alibaba/ailabs/agui/bean/AbstractItemInfo;
.source "MmiInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/agui/bean/AbstractItemInfo<",
        "Lcom/alibaba/ailabs/agui/mmi/MmiInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final gestureInfo:Lcom/alibaba/ailabs/agui/bean/GestureInfo;

.field private isStarted:Z

.field private final voiceInfo:Lcom/alibaba/ailabs/agui/bean/VoiceInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Lcom/alibaba/ailabs/agui/bean/AbstractItemInfo;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isStarted:Z

    .line 18
    new-instance v0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->voiceInfo:Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    .line 23
    new-instance v0, Lcom/alibaba/ailabs/agui/bean/GestureInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/agui/bean/GestureInfo;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->gestureInfo:Lcom/alibaba/ailabs/agui/bean/GestureInfo;

    return-void
.end method


# virtual methods
.method public getCopy(Lcom/alibaba/ailabs/agui/mmi/MmiInfo;)V
    .locals 2

    .line 45
    iget-boolean v0, p1, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isStarted:Z

    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isStarted:Z

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->voiceInfo:Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    iget-object v1, p1, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->voiceInfo:Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->getCopy(Lcom/alibaba/ailabs/agui/bean/VoiceInfo;)V

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->gestureInfo:Lcom/alibaba/ailabs/agui/bean/GestureInfo;

    iget-object p1, p1, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->gestureInfo:Lcom/alibaba/ailabs/agui/bean/GestureInfo;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->getCopy(Lcom/alibaba/ailabs/agui/bean/GestureInfo;)V

    return-void
.end method

.method public bridge synthetic getCopy(Ljava/lang/Object;)V
    .locals 0

    .line 9
    check-cast p1, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->getCopy(Lcom/alibaba/ailabs/agui/mmi/MmiInfo;)V

    return-void
.end method

.method public getGestureInfo()Lcom/alibaba/ailabs/agui/bean/GestureInfo;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->gestureInfo:Lcom/alibaba/ailabs/agui/bean/GestureInfo;

    return-object v0
.end method

.method public getVoiceInfo()Lcom/alibaba/ailabs/agui/bean/VoiceInfo;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->voiceInfo:Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isStarted:Z

    return v0
.end method

.method public setStarted(Z)V
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isStarted:Z

    return-void
.end method

.method public toEventJson()Lorg/json/JSONObject;
    .locals 3

    .line 53
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "is"

    .line 55
    iget-boolean v2, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isStarted:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 59
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->voiceInfo:Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->toEventJson()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "vi"

    .line 61
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->gestureInfo:Lcom/alibaba/ailabs/agui/bean/GestureInfo;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->toEventJson()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "gi"

    .line 66
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v0

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public toEventJson(Lcom/alibaba/ailabs/agui/mmi/MmiInfo;)Lorg/json/JSONObject;
    .locals 3

    .line 80
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "is"

    .line 82
    iget-boolean v2, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->isStarted:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 86
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->voiceInfo:Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    iget-object v2, p1, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->voiceInfo:Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->toEventJson(Lcom/alibaba/ailabs/agui/bean/VoiceInfo;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v2, "vi"

    .line 88
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->gestureInfo:Lcom/alibaba/ailabs/agui/bean/GestureInfo;

    iget-object p1, p1, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->gestureInfo:Lcom/alibaba/ailabs/agui/bean/GestureInfo;

    invoke-virtual {v1, p1}, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->toEventJson(Lcom/alibaba/ailabs/agui/bean/GestureInfo;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v1, "gi"

    .line 93
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic toEventJson(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0

    .line 9
    check-cast p1, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/agui/mmi/MmiInfo;->toEventJson(Lcom/alibaba/ailabs/agui/mmi/MmiInfo;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
