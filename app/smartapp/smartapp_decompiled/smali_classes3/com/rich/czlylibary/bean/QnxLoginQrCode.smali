.class public Lcom/rich/czlylibary/bean/QnxLoginQrCode;
.super Lcom/rich/czlylibary/bean/Result;


# instance fields
.field private qrCodeUrl:Ljava/lang/String;

.field private sessionKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/rich/czlylibary/bean/Result;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getQrCodeUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxLoginQrCode;->qrCodeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/bean/QnxLoginQrCode;->sessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public setQrCodeUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxLoginQrCode;->qrCodeUrl:Ljava/lang/String;

    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/rich/czlylibary/bean/QnxLoginQrCode;->sessionKey:Ljava/lang/String;

    return-void
.end method
