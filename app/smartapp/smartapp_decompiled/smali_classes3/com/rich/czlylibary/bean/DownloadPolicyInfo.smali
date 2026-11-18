.class public Lcom/rich/czlylibary/bean/DownloadPolicyInfo;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private bizInfos:[Lcom/rich/czlylibary/bean/BizInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBizInfos()[Lcom/rich/czlylibary/bean/BizInfo;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/DownloadPolicyInfo;->bizInfos:[Lcom/rich/czlylibary/bean/BizInfo;

    return-object v0
.end method

.method public setBizInfos([Lcom/rich/czlylibary/bean/BizInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/DownloadPolicyInfo;->bizInfos:[Lcom/rich/czlylibary/bean/BizInfo;

    return-void
.end method
