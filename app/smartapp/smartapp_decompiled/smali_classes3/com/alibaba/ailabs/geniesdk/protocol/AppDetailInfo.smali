.class public Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;
.super Ljava/lang/Object;
.source "AppDetailInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final JUMP_ACTIVITY:I = 0x0

.field public static final JUMP_BROADCAST:I = 0x2

.field public static final JUMP_SERVIVCE:I = 0x1


# instance fields
.field public action:Ljava/lang/String;

.field public appName:Ljava/lang/String;

.field public callbackId:Ljava/lang/String;

.field public extension:Ljava/lang/String;

.field public homeUrl:Ljava/lang/String;

.field public jumpType:I

.field public maxVersion:I

.field public minVersion:I

.field public packageName:Ljava/lang/String;

.field public pageType:Ljava/lang/String;

.field public renderData:Ljava/lang/String;

.field public renderType:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 9
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->appName:Ljava/lang/String;

    .line 10
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->packageName:Ljava/lang/String;

    .line 11
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->action:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->url:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->homeUrl:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->renderData:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->pageType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 18
    iput v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->jumpType:I

    .line 19
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->extension:Ljava/lang/String;

    .line 20
    iput-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->callbackId:Ljava/lang/String;

    .line 21
    iput v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->renderType:I

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    .line 31
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->url:Ljava/lang/String;

    return-object v0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->homeUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->homeUrl:Ljava/lang/String;

    return-object v0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->action:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->action:Ljava/lang/String;

    return-object v0

    .line 46
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", renderType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->renderType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", minVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->minVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callbackId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->callbackId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", maxVersion:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->maxVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", homeUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/protocol/AppDetailInfo;->homeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
