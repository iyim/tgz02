.class public final Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;
.super Ljava/lang/Object;
.source "MtopBizRsp.java"


# instance fields
.field private apiUrl:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "api"
    .end annotation
.end field

.field private data:Lcom/alibaba/fastjson/JSONObject;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        name = "data"
    .end annotation
.end field

.field private errCode:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
    .end annotation
.end field

.field private error:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
    .end annotation
.end field

.field private mDataHash:I
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private mDataMd5:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
        serialize = false
    .end annotation
.end field

.field private mTraceId:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/fastjson/annotation/JSONField;
        deserialize = false
    .end annotation
.end field

.field private ret:[Ljava/lang/String;
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
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->error:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->error:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->errCode:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->error:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->apiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->data:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getDataHash()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->mDataHash:I

    return v0
.end method

.method public getDataMd5()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->mDataMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getErrCode()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getRet()[Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->ret:[Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->mTraceId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setApiUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->apiUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;
    .locals 0

    .line 74
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->data:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public setDataHash(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->mDataHash:I

    return-void
.end method

.method public setDataMd5(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->mDataMd5:Ljava/lang/String;

    return-void
.end method

.method public setErrCode(Ljava/lang/String;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->errCode:Ljava/lang/String;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->error:Ljava/lang/String;

    return-void
.end method

.method public setRet([Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->ret:[Ljava/lang/String;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->mTraceId:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->version:Ljava/lang/String;

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/mtop/response/MtopBizRsp;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
