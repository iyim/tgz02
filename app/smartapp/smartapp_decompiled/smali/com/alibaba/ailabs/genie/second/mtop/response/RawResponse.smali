.class public Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;
.super Ljava/lang/Object;
.source "RawResponse.java"


# instance fields
.field private apiUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "api"
    .end annotation
.end field

.field private mData:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "data"
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

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->apiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getDataHash()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->mDataHash:I

    return v0
.end method

.method public getDataMd5()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->mDataMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->mTraceId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setApiUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->apiUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->mData:Ljava/lang/String;

    return-object p0
.end method

.method public setDataHash(I)Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;
    .locals 0

    .line 59
    iput p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->mDataHash:I

    return-object p0
.end method

.method public setDataMd5(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->mDataMd5:Ljava/lang/String;

    return-object p0
.end method

.method public setTraceId(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->mTraceId:Ljava/lang/String;

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->version:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RawResponse{apiUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->apiUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->mData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mDataHash="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->mDataHash:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDataMd5=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->mDataMd5:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTraceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/second/mtop/response/RawResponse;->mTraceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
