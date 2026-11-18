.class public Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;
.super Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.source "BaseResponse.java"


# instance fields
.field protected statusCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "statusCode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getStatusCode()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;->statusCode:Ljava/lang/String;

    return-object v0
.end method

.method public setStatusCode(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;->statusCode:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContactsBaseResponse{statusCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/contacts/repository/response/cmrtc/BaseResponse;->statusCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
