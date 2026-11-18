.class public Lcom/aliyun/oss/model/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aliyun/oss/model/Callback$CalbackBodyType;
    }
.end annotation


# instance fields
.field private calbackBodyType:Lcom/aliyun/oss/model/Callback$CalbackBodyType;

.field private callbackBody:Ljava/lang/String;

.field private callbackHost:Ljava/lang/String;

.field private callbackUrl:Ljava/lang/String;

.field private callbackVar:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/aliyun/oss/model/Callback;->callbackVar:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addCallbackVar(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/aliyun/oss/model/Callback;->callbackVar:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCalbackBodyType()Lcom/aliyun/oss/model/Callback$CalbackBodyType;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/aliyun/oss/model/Callback;->calbackBodyType:Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    return-object v0
.end method

.method public getCallbackBody()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/aliyun/oss/model/Callback;->callbackBody:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackHost()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/aliyun/oss/model/Callback;->callbackHost:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackUrl()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/aliyun/oss/model/Callback;->callbackUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCallbackVar()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/aliyun/oss/model/Callback;->callbackVar:Ljava/util/Map;

    return-object v0
.end method

.method public hasCallbackVar()Z
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/aliyun/oss/model/Callback;->callbackVar:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setCalbackBodyType(Lcom/aliyun/oss/model/Callback$CalbackBodyType;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/aliyun/oss/model/Callback;->calbackBodyType:Lcom/aliyun/oss/model/Callback$CalbackBodyType;

    return-void
.end method

.method public setCallbackBody(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/aliyun/oss/model/Callback;->callbackBody:Ljava/lang/String;

    return-void
.end method

.method public setCallbackHost(Ljava/lang/String;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/aliyun/oss/model/Callback;->callbackHost:Ljava/lang/String;

    return-void
.end method

.method public setCallbackUrl(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/aliyun/oss/model/Callback;->callbackUrl:Ljava/lang/String;

    return-void
.end method

.method public setCallbackVar(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/aliyun/oss/model/Callback;->callbackVar:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    if-eqz p1, :cond_0

    .line 127
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/aliyun/oss/model/Callback;->callbackVar:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
