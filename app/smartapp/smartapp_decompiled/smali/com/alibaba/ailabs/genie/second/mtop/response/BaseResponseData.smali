.class public abstract Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.super Ljava/lang/Object;
.source "BaseResponseData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;
    }
.end annotation


# instance fields
.field protected msgCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "msgCode"
    .end annotation
.end field

.field protected msgInfo:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "msgInfo"
    .end annotation
.end field

.field protected ret:Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "ret"
    .end annotation
.end field

.field protected success:Z
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "success"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getMsgCode()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->msgCode:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgInfo()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->msgInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getRet()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->ret:Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->success:Z

    return v0
.end method

.method public setMsgCode(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->msgCode:Ljava/lang/String;

    return-object p0
.end method

.method public setMsgInfo(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->msgInfo:Ljava/lang/String;

    return-object p0
.end method

.method public setRet(Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;)Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->ret:Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;

    return-object p0
.end method

.method public setSuccess(Z)Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->success:Z

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BaseResponseData{ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->ret:Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->success:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", msgCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->msgCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", msgInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;->msgInfo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
