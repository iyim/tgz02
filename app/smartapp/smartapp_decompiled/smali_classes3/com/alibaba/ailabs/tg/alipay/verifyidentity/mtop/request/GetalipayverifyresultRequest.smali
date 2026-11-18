.class public Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;
.super Ljava/lang/Object;
.source "GetalipayverifyresultRequest.java"

# interfaces
.implements Lmtopsdk/mtop/domain/IMTOPDataObject;


# instance fields
.field private API_NAME:Ljava/lang/String;

.field private NEED_ECODE:Z

.field private NEED_SESSION:Z

.field private VERSION:Ljava/lang/String;

.field private authInfo:Ljava/lang/String;

.field private bizId:Ljava/lang/String;

.field private verifyId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "1.0"

    .line 10
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->VERSION:Ljava/lang/String;

    const-string v0, "mtop.alibaba.aicloud.soundprint.getalipayverifyresult"

    .line 16
    iput-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAPI_NAME()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->API_NAME:Ljava/lang/String;

    return-object v0
.end method

.method public getAuthInfo()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->authInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getBizId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method public getNEED_ECODE()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->NEED_ECODE:Z

    return v0
.end method

.method public getNEED_SESSION()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->NEED_SESSION:Z

    return v0
.end method

.method public getVERSION()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyId()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->verifyId:Ljava/lang/String;

    return-object v0
.end method

.method public setAPI_NAME(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->API_NAME:Ljava/lang/String;

    return-void
.end method

.method public setAuthInfo(Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->authInfo:Ljava/lang/String;

    return-void
.end method

.method public setBizId(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->bizId:Ljava/lang/String;

    return-void
.end method

.method public setNEED_ECODE(Z)V
    .locals 0

    .line 57
    iput-boolean p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->NEED_ECODE:Z

    return-void
.end method

.method public setNEED_SESSION(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->NEED_SESSION:Z

    return-void
.end method

.method public setVERSION(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->VERSION:Ljava/lang/String;

    return-void
.end method

.method public setVerifyId(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/alipay/verifyidentity/mtop/request/GetalipayverifyresultRequest;->verifyId:Ljava/lang/String;

    return-void
.end method
