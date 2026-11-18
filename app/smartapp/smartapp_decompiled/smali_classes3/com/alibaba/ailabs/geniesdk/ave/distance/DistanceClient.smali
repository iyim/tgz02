.class public Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "DistanceClient.java"


# static fields
.field private static final RESULT:I = 0x5


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/alibaba/ailabs/ipc/remote/AbstractCommu$BinderDeathListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->clientKey:Ljava/lang/String;

    return-object v0
.end method

.method public isSame(Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->getClientId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method public onResult(I)Z
    .locals 1

    .line 49
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/ipc/remote/AbstractCommu;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x5

    .line 51
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->callBooleanMethod(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->clientId:Ljava/lang/String;

    return-void
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->clientKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DistanceClient{clientId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", clientKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/geniesdk/ave/distance/DistanceClient;->clientKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
