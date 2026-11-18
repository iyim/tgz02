.class public Lcom/rich/czlylibary/bean/QnxCheckQrCodeLoginStatus;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private status:Ljava/lang/String;

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxCheckQrCodeLoginStatus;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxCheckQrCodeLoginStatus;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxCheckQrCodeLoginStatus;->status:Ljava/lang/String;

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxCheckQrCodeLoginStatus;->uid:Ljava/lang/String;

    return-void
.end method
