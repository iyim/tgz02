.class public final Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;
.super Ljava/lang/Object;
.source "BaseResponseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Ret"
.end annotation


# instance fields
.field private code:I

.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;->code:I

    return v0
.end method

.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;
    .locals 0

    .line 66
    iput p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;->code:I

    return-object p0
.end method

.method public setMsg(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;->msg:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ret{code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData$Ret;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
