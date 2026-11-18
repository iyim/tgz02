.class public Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;
.super Ljava/lang/Object;
.source "GenieMtopCall.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/network/Call;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/alibaba/ailabs/tg/network/Call<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private callback:Lcom/alibaba/ailabs/tg/network/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/tg/network/Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final genieMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private final mArgs:[Ljava/lang/Object;

.field private final mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

.field private mListener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;[Ljava/lang/Object;Lcom/alibaba/ailabs/tg/network/Converter$Factory;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->genieMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    .line 33
    iput-object p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->mArgs:[Ljava/lang/Object;

    .line 34
    iput-object p3, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/Callback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->callback:Lcom/alibaba/ailabs/tg/network/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->genieMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;)Lcom/alibaba/ailabs/tg/network/Converter$Factory;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->mFactory:Lcom/alibaba/ailabs/tg/network/Converter$Factory;

    return-object p0
.end method


# virtual methods
.method public enqueue(Lcom/alibaba/ailabs/tg/network/Callback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/tg/network/Callback<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->enqueue(Lcom/alibaba/ailabs/tg/network/Callback;I)V

    return-void
.end method

.method public enqueue(Lcom/alibaba/ailabs/tg/network/Callback;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/ailabs/tg/network/Callback<",
            "TT;>;I)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->callback:Lcom/alibaba/ailabs/tg/network/Callback;

    .line 45
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->genieMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    iget-object p1, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->request:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;

    const-string v0, ""

    if-nez p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->callback:Lcom/alibaba/ailabs/tg/network/Callback;

    if-eqz p1, :cond_0

    const-string v1, "ApiMethod request parser failed"

    .line 47
    invoke-interface {p1, p2, v1, v0}, Lcom/alibaba/ailabs/tg/network/Callback;->onFailure(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 53
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->genieMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    iget-object v2, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->request:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;

    .line 57
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->genieMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    iget-object p1, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->paramType:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    sget-object v1, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->MAP:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_3

    .line 58
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->mArgs:[Ljava/lang/Object;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->mArgs:[Ljava/lang/Object;

    array-length p1, p1

    if-lez p1, :cond_2

    .line 61
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->mArgs:[Ljava/lang/Object;

    aget-object p1, p1, v3

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 59
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "GenieMtop service must have an argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->genieMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    iget-object p1, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->paramType:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    sget-object v1, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;->PARAMS:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceConfig$ParamType;

    if-ne p1, v1, :cond_6

    .line 63
    new-instance p1, Ljava/util/HashMap;

    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->genieMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->paramsKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p1, v0, v1}, Ljava/util/HashMap;-><init>(IF)V

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->genieMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->paramsKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 65
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->mArgs:[Ljava/lang/Object;

    array-length v0, v0

    if-le v3, v0, :cond_4

    const-string v0, "args size less than @GenieMtopParameters size"

    .line 66
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->genieMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    iget-object v0, v0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->paramsKeys:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->mArgs:[Ljava/lang/Object;

    aget-object v1, v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    :cond_5
    :goto_1
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 76
    :cond_6
    :goto_2
    iput-object v0, v2, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->args:Ljava/lang/String;

    .line 77
    invoke-virtual {v2}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->buildData()V

    .line 83
    new-instance p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;

    invoke-direct {p1, p0, p2}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall$1;-><init>(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;I)V

    iput-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->mListener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    .line 137
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->genieMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    iget-object p1, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->request:Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/mtop/genie/GenieMtopServiceBaseRequest;->getApiName()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".hsf."

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 138
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v1

    const-class v3, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;

    iget-object v4, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->mListener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    const/4 v6, 0x0

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    goto :goto_3

    .line 140
    :cond_7
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v1

    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->genieMtopServiceMethod:Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;

    iget-object v3, p1, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopServiceMethod;->outClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->mListener:Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;

    const/4 v6, 0x0

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public fixBaseModel(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONObject;I)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/alibaba/fastjson/JSONObject;",
            "I)Z"
        }
    .end annotation

    const-string/jumbo v0, "retValue"

    .line 160
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSON;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string/jumbo v1, "result"

    .line 164
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 165
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSON;

    :cond_1
    const-string v1, "model"

    .line 168
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 169
    invoke-virtual {p3, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSON;

    :cond_2
    if-eqz v0, :cond_9

    const/4 v1, 0x0

    .line 173
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "success"

    .line 176
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 177
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    :cond_3
    const-string v3, "isSuccess"

    .line 179
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 180
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    :cond_4
    const-string v3, "msgInfo"

    .line 182
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, ""

    if-eqz v4, :cond_5

    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 183
    invoke-virtual {p3, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_5
    move-object v3, v5

    :goto_1
    const-string v4, "msgCode"

    .line 185
    invoke-virtual {p3, v4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p3, v4}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 186
    invoke-virtual {p3, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 188
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_8

    .line 189
    iget-object p1, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->callback:Lcom/alibaba/ailabs/tg/network/Callback;

    if-eqz p1, :cond_7

    .line 190
    invoke-interface {p1, p4, v5, v3}, Lcom/alibaba/ailabs/tg/network/Callback;->onFailure(ILjava/lang/String;Ljava/lang/String;)V

    :cond_7
    return v1

    .line 194
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object p3

    invoke-virtual {p3, v5}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;->setMsgCode(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object p3

    invoke-virtual {p3, v3}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;->setMsgInfo(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object p3

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;->setSuccess(Z)V

    .line 198
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;->setModel(Lcom/alibaba/fastjson/JSON;)V

    .line 201
    :cond_9
    iget-object p3, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->callback:Lcom/alibaba/ailabs/tg/network/Callback;

    if-eqz p3, :cond_a

    .line 202
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 203
    iget-object p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->callback:Lcom/alibaba/ailabs/tg/network/Callback;

    invoke-interface {p2, p4, p1}, Lcom/alibaba/ailabs/tg/network/Callback;->onSuccess(ILjava/lang/Object;)V

    :cond_a
    const/4 p1, 0x1

    return p1
.end method

.method public fixDoubleModel(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;Ljava/lang/Class;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;",
            "Ljava/lang/Class<",
            "TE;>;I)Z"
        }
    .end annotation

    .line 210
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;->getModel()Lcom/alibaba/fastjson/JSON;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 211
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    .line 212
    iget-object p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->callback:Lcom/alibaba/ailabs/tg/network/Callback;

    if-eqz p2, :cond_0

    .line 213
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;->getMsgCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;->getMsgInfo()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, v0, p1}, Lcom/alibaba/ailabs/tg/network/Callback;->onFailure(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1

    .line 217
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;->getModel()Lcom/alibaba/fastjson/JSON;

    move-result-object v0

    .line 218
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_2

    .line 219
    nop

    nop

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->fixBaseModel(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONObject;I)Z

    move-result p1

    return p1

    .line 222
    :cond_2
    instance-of v2, v0, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v2, :cond_3

    .line 223
    nop

    nop

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->fixListModel(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;I)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public fixListModel(Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;Ljava/lang/Class;Lcom/alibaba/fastjson/JSONArray;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;",
            "Ljava/lang/Class<",
            "TE;>;",
            "Lcom/alibaba/fastjson/JSONArray;",
            "I)Z"
        }
    .end annotation

    .line 148
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;->setModel(Lcom/alibaba/fastjson/JSON;)V

    .line 150
    iget-object p3, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->callback:Lcom/alibaba/ailabs/tg/network/Callback;

    if-eqz p3, :cond_0

    .line 151
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopResp;->getData()Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopRespData;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 152
    iget-object p2, p0, Lcom/alibaba/ailabs/tg/network/mtop/GenieMtopCall;->callback:Lcom/alibaba/ailabs/tg/network/Callback;

    invoke-interface {p2, p4, p1}, Lcom/alibaba/ailabs/tg/network/Callback;->onSuccess(ILjava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
