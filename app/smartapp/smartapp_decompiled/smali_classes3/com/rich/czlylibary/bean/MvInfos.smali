.class public Lcom/rich/czlylibary/bean/MvInfos;
.super Lcom/rich/czlylibary/bean/Result;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mvInfo:Lcom/rich/czlylibary/bean/MVInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMvInfo()Lcom/rich/czlylibary/bean/MVInfo;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/MvInfos;->mvInfo:Lcom/rich/czlylibary/bean/MVInfo;

    return-object v0
.end method

.method public setMvInfo(Lcom/rich/czlylibary/bean/MVInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/MvInfos;->mvInfo:Lcom/rich/czlylibary/bean/MVInfo;

    return-void
.end method
