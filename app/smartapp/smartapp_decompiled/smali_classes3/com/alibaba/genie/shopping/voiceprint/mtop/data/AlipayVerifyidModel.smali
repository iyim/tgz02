.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/data/AlipayVerifyidModel;
.super Ljava/lang/Object;
.source "AlipayVerifyidModel.java"


# instance fields
.field private bizId:Ljava/lang/String;

.field private verifyId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getBizId()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/AlipayVerifyidModel;->bizId:Ljava/lang/String;

    return-object v0
.end method

.method public getVerifyId()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/AlipayVerifyidModel;->verifyId:Ljava/lang/String;

    return-object v0
.end method

.method public setBizId(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/AlipayVerifyidModel;->bizId:Ljava/lang/String;

    return-void
.end method

.method public setVerifyId(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/AlipayVerifyidModel;->verifyId:Ljava/lang/String;

    return-void
.end method
