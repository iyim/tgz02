.class public Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "OssTokenResponseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData$OssToken;
    }
.end annotation


# instance fields
.field private ossToken:Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData$OssToken;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "model"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getOssToken()Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData$OssToken;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData;->ossToken:Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData$OssToken;

    return-object v0
.end method

.method public setOssToken(Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData$OssToken;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData;->ossToken:Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData$OssToken;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OssTokenResponseData{ossToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData;->ossToken:Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData$OssToken;

    .line 21
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/response/OssTokenResponseData$OssToken;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
