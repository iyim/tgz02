.class public Lcom/alibaba/ailabs/agui/bean/GestureInfo;
.super Lcom/alibaba/ailabs/agui/bean/AbstractItemInfo;
.source "GestureInfo.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/agui/bean/AbstractItemInfo<",
        "Lcom/alibaba/ailabs/agui/bean/GestureInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private isEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/alibaba/ailabs/agui/bean/AbstractItemInfo;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public getCopy(Lcom/alibaba/ailabs/agui/bean/GestureInfo;)V
    .locals 0

    .line 18
    iget-boolean p1, p1, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->isEnabled:Z

    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->isEnabled:Z

    return-void
.end method

.method public bridge synthetic getCopy(Ljava/lang/Object;)V
    .locals 0

    .line 5
    check-cast p1, Lcom/alibaba/ailabs/agui/bean/GestureInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->getCopy(Lcom/alibaba/ailabs/agui/bean/GestureInfo;)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->isEnabled:Z

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->isEnabled:Z

    return-void
.end method

.method public toEventJson()Lorg/json/JSONObject;
    .locals 3

    .line 24
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ie"

    .line 25
    iget-boolean v2, p0, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->isEnabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public toEventJson(Lcom/alibaba/ailabs/agui/bean/GestureInfo;)Lorg/json/JSONObject;
    .locals 2

    .line 36
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    iget-boolean p1, p1, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->isEnabled:Z

    iget-boolean v1, p0, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->isEnabled:Z

    if-eq p1, v1, :cond_0

    const-string p1, "ie"

    .line 38
    iget-boolean v1, p0, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->isEnabled:Z

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic toEventJson(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 0

    .line 5
    check-cast p1, Lcom/alibaba/ailabs/agui/bean/GestureInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/agui/bean/GestureInfo;->toEventJson(Lcom/alibaba/ailabs/agui/bean/GestureInfo;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
