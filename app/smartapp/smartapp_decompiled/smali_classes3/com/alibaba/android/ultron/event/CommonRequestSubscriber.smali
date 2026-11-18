.class public Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;
.super Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.source "CommonRequestSubscriber.java"


# static fields
.field public static final DBG:Z = false

.field public static final TAG:Ljava/lang/String; = "CommonRequestSubscriber"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getAsyncData(Lcom/taobao/android/ultron/datamodel/IDMContext;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;
    .locals 1

    .line 161
    instance-of v0, p1, Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    if-eqz v0, :cond_0

    .line 162
    nop

    nop

    .line 163
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getEngine()Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->asyncRequestData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method private getSubmitData(Lcom/taobao/android/ultron/datamodel/IDMContext;)Ljava/lang/String;
    .locals 1

    .line 170
    instance-of v0, p1, Lcom/taobao/android/ultron/datamodel/imp/DMContext;

    if-eqz v0, :cond_0

    .line 171
    nop

    nop

    .line 172
    invoke-virtual {p1}, Lcom/taobao/android/ultron/datamodel/imp/DMContext;->getEngine()Lcom/taobao/android/ultron/datamodel/imp/DMEngine;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/taobao/android/ultron/datamodel/imp/DMEngine;->submitRequestData(Lcom/taobao/android/ultron/datamodel/imp/DMContext;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method protected getMtopReturnData(Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/fastjson/JSONObject;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 152
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lmtopsdk/mtop/domain/MtopResponse;->getBytedata()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method protected onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 17

    move-object/from16 v6, p0

    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v0

    .line 34
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v7, "CommonRequestSubscriber"

    if-nez v0, :cond_0

    const-string v0, "error: eventFields is null"

    .line 36
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    .line 40
    :cond_0
    new-instance v1, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v1}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    const-string v2, "mtopConfig"

    .line 42
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "next"

    .line 43
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v4, "subfilter"

    .line 44
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v2, :cond_1

    const-string v0, "error: mtopConfig is null"

    .line 47
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v4, "responseKey"

    .line 50
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v8, "apiMethod"

    .line 51
    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "apiVersion"

    .line 52
    invoke-virtual {v2, v9}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "data"

    .line 54
    invoke-virtual {v2, v10}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v10

    const-string v11, "isNeedWua"

    .line 55
    invoke-virtual {v2, v11}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "true"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    const-string v13, "usePost"

    .line 56
    invoke-virtual {v2, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .line 59
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object v13

    const-string v14, "requestType"

    .line 60
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 61
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    const-string v15, "async"

    .line 62
    invoke-static {v2, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v15

    move-object/from16 v16, v7

    const-string v7, "params"

    if-eqz v15, :cond_2

    .line 63
    invoke-interface {v13}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getDataContext()Lcom/taobao/android/ultron/datamodel/IDMContext;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getComponent()Lcom/taobao/android/ultron/common/model/IDMComponent;

    move-result-object v13

    invoke-direct {v6, v2, v13}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->getAsyncData(Lcom/taobao/android/ultron/datamodel/IDMContext;Lcom/taobao/android/ultron/common/model/IDMComponent;)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-interface {v14, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v15, "submit"

    .line 65
    invoke-static {v2, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 66
    invoke-interface {v13}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->getDataContext()Lcom/taobao/android/ultron/datamodel/IDMContext;

    move-result-object v2

    invoke-direct {v6, v2}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->getSubmitData(Lcom/taobao/android/ultron/datamodel/IDMContext;)Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-interface {v14, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_3
    :goto_0
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 71
    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    if-eqz v10, :cond_4

    .line 73
    invoke-virtual {v2, v10}, Lcom/alibaba/fastjson/JSONObject;->putAll(Ljava/util/Map;)V

    .line 76
    :cond_4
    invoke-virtual {v6, v1, v2}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;->setRequestData(Lmtopsdk/mtop/domain/MtopRequest;Lcom/alibaba/fastjson/JSONObject;)Z

    .line 78
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const-string v2, "loadingConfig"

    .line 83
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "message"

    .line 85
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/android/ultron/event/base/UltronEvent;->getUltronInstance()Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->showLoading(Ljava/lang/String;)V

    .line 89
    :cond_6
    invoke-virtual {v1, v8}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, v9}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    .line 94
    invoke-static {v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/domain/MtopRequest;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v7

    if-eqz v12, :cond_7

    .line 95
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    goto :goto_1

    :cond_7
    sget-object v0, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    :goto_1
    invoke-virtual {v7, v0}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    if-eqz v11, :cond_8

    .line 97
    invoke-virtual {v7}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->useWua()Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 99
    :cond_8
    new-instance v9, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;

    move-object v0, v9

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/ultron/event/CommonRequestSubscriber$1;-><init>(Lcom/alibaba/android/ultron/event/CommonRequestSubscriber;Lcom/alibaba/android/ultron/event/base/UltronEvent;Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v9}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    const/4 v0, 0x1

    .line 133
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start execute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    move-object/from16 v1, v16

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 134
    invoke-virtual {v7}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->startRequest()V

    return-void

    :cond_9
    :goto_2
    move-object/from16 v1, v16

    const-string v0, "error: apiMethod or apiVersion is null"

    .line 79
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method protected setRequestData(Lmtopsdk/mtop/domain/MtopRequest;Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 139
    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
