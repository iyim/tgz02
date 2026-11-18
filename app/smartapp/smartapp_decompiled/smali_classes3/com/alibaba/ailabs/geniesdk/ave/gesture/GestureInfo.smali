.class public Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "GestureInfo.java"


# static fields
.field private static final GESTURE_RESULT:I


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;

.field private tips:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTips()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->tips:Ljava/util/Map;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->type:I

    return v0
.end method

.method public isSame(Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 62
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->getType()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->getType()I

    move-result v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->getTips()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 66
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->tips:Ljava/util/Map;

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->tips:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->tips:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 72
    iget-object v3, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->tips:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    return v0

    :cond_4
    const/4 p1, 0x1

    return p1

    :cond_5
    :goto_0
    return v0
.end method

.method public onGesture(I)Z
    .locals 1

    .line 51
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    .line 53
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->callBooleanMethod(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->clientKey:Ljava/lang/String;

    return-void
.end method

.method public setTips(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->tips:Ljava/util/Map;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GestureInfo{, type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", clientId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clientKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->clientKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "tips="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/gesture/GestureInfo;->tips:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
