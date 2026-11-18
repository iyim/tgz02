.class public abstract Lcom/alibaba/ailabs/ipc/remote/BaseSvr;
.super Lcom/alibaba/ailabs/ipc/remote/CommuClient;
.source "BaseSvr.java"


# instance fields
.field private mClientId:Ljava/lang/String;

.field private mType:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/ipc/remote/CommuClient;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, p2}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->setClientId(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->setType(I)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 77
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, v0, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->mType:I

    iget v1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->mType:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 82
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->mClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->mType:I

    return v0
.end method

.method public abstract onClientDied(Z)V
.end method

.method public abstract onCommu(ILandroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->mClientId:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->mType:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseClient{mClientId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->mClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/ipc/remote/BaseSvr;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
