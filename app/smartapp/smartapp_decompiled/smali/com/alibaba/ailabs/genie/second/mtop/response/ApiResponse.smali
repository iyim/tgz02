.class public final Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private apiUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "api"
    .end annotation
.end field

.field private mData:Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "data"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mDataHash:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
    .end annotation
.end field

.field private mDataMd5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
    .end annotation
.end field

.field private mTraceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
    .end annotation
.end field

.field private version:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "v"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->apiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->mData:Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    return-object v0
.end method

.method public getDataHash()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->mDataHash:I

    return v0
.end method

.method public getDataMd5()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->mDataMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->mTraceId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setApiUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->apiUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;)Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->mData:Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    return-object p0
.end method

.method public setDataHash(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->mDataHash:I

    return-void
.end method

.method public setDataMd5(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->mDataMd5:Ljava/lang/String;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->mTraceId:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse<",
            "TT;>;"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->version:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ApiResponse{apiUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->apiUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/ApiResponse;->mData:Lcom/alibaba/ailabs/genie/second/mtop/response/BaseResponseData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
