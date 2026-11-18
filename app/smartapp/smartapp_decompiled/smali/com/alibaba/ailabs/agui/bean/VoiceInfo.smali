.class public Lcom/alibaba/ailabs/agui/bean/VoiceInfo;
.super Lcom/alibaba/ailabs/agui/bean/AbstractItemInfo;
.source "VoiceInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/agui/bean/AbstractItemInfo<",
        "Lcom/alibaba/ailabs/agui/bean/VoiceInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private isBackgroundService:Z

.field private isEnabled:Z

.field private isForbiddenWakeup:Z

.field private virtualPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 7
    invoke-direct {p0}, Lcom/alibaba/ailabs/agui/bean/AbstractItemInfo;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isForbiddenWakeup:Z

    .line 9
    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isBackgroundService:Z

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->virtualPackageName:Ljava/lang/String;

    .line 11
    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public getCopy(Lcom/alibaba/ailabs/agui/bean/VoiceInfo;)V
    .locals 1

    .line 46
    iget-boolean v0, p1, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isBackgroundService:Z

    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isBackgroundService:Z

    .line 47
    iget-object v0, p1, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->virtualPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->virtualPackageName:Ljava/lang/String;

    .line 48
    iget-boolean v0, p1, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isForbiddenWakeup:Z

    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isForbiddenWakeup:Z

    .line 49
    iget-boolean p1, p1, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isEnabled:Z

    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isEnabled:Z

    return-void
.end method

.method public bridge synthetic getCopy(Ljava/lang/Object;)V
    .locals 0

    .line 7
    check-cast p1, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->getCopy(Lcom/alibaba/ailabs/agui/bean/VoiceInfo;)V

    return-void
.end method

.method public getVirtualPackageName()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->virtualPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isBackgroundService()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isBackgroundService:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isEnabled:Z

    return v0
.end method

.method public isForbiddenWakeup()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isForbiddenWakeup:Z

    return v0
.end method

.method public setBackgroundService(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isBackgroundService:Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isEnabled:Z

    return-void
.end method

.method public setForbiddenWakeup(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isForbiddenWakeup:Z

    return-void
.end method

.method public setVirtualPackageName(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->virtualPackageName:Ljava/lang/String;

    return-void
.end method

.method public toEventJson()Lorg/json/JSONObject;
    .locals 3

    .line 55
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ie"

    .line 56
    iget-boolean v2, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isEnabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "vp"

    .line 57
    iget-object v2, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->virtualPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ifw"

    .line 58
    iget-boolean v2, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isForbiddenWakeup:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "ibs"

    .line 59
    iget-boolean v2, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isBackgroundService:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public toEventJson(Lcom/alibaba/ailabs/agui/bean/VoiceInfo;)Lorg/json/JSONObject;
    .locals 3

    .line 70
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 72
    iget-boolean v1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isEnabled:Z

    iget-boolean v2, p1, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isEnabled:Z

    if-eq v1, v2, :cond_0

    const-string v1, "ie"

    .line 73
    iget-boolean v2, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isEnabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    :cond_0
    iget-object v1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->virtualPackageName:Ljava/lang/String;

    iget-object v2, p1, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->virtualPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "vp"

    .line 77
    iget-object v2, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->virtualPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isForbiddenWakeup:Z

    iget-boolean p1, p1, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isForbiddenWakeup:Z

    if-eq v1, p1, :cond_2

    const-string p1, "ifw"

    .line 81
    iget-boolean v1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isForbiddenWakeup:Z

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 84
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isBackgroundService:Z

    iget-boolean v1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isBackgroundService:Z

    if-eq p1, v1, :cond_3

    const-string p1, "ibs"

    .line 85
    iget-boolean v1, p0, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->isBackgroundService:Z

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v0

    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic toEventJson(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0

    .line 7
    check-cast p1, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/agui/bean/VoiceInfo;->toEventJson(Lcom/alibaba/ailabs/agui/bean/VoiceInfo;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
