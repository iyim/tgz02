.class public final Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;
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

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->error:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 30
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->error:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->errCode:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->error:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getApiUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->apiUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->data:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getDataHash()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->mDataHash:I

    return v0
.end method

.method public getDataMd5()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->mDataMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getErrCode()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->errCode:Ljava/lang/String;

    return-object v0
.end method

.method public getError()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getRet()[Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->ret:[Ljava/lang/String;

    return-object v0
.end method

.method public getTraceId()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->mTraceId:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setApiUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->apiUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;
    .locals 0

    .line 72
    :try_start_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->data:Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 74
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public setDataHash(I)V
    .locals 0

    .line 85
    iput p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->mDataHash:I

    return-void
.end method

.method public setDataMd5(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->mDataMd5:Ljava/lang/String;

    return-void
.end method

.method public setErrCode(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->errCode:Ljava/lang/String;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->error:Ljava/lang/String;

    return-void
.end method

.method public setRet([Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->ret:[Ljava/lang/String;

    return-void
.end method

.method public setTraceId(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->mTraceId:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->version:Ljava/lang/String;

    return-object p0
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .line 129
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 134
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/mtop/response/MtopBizRsp;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
