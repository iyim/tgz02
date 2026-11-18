.class public Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;
.super Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;
.source "AsyncRefreshSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;,
        Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$DefaultCustomSubscriberParser;
    }
.end annotation


# static fields
.field public static final KEY_ASYNC_STATUS:Ljava/lang/String; = "asyncStatus"

.field public static final KEY_COMPONENT:Ljava/lang/String; = "triggerComponent"

.field public static final KEY_IS_ERROR:Ljava/lang/String; = "isError"

.field public static final KEY_MTOP_RESPONSE:Ljava/lang/String; = "mtopResponse"

.field public static final KEY_NEED_REFRESH_COMPONENTS:Ljava/lang/String; = "needRefreshComponents"

.field public static final KEY_TARGET_COMPONENTS:Ljava/lang/String; = "targetComponents"

.field public static final STATUS_FAIL:I = 0x3

.field public static final STATUS_LOADING:I = 0x1

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x2

.field public static final STATUS_SUCCESS_AFTER_REFRESH:I = 0x4

.field public static final TAG:Ljava/lang/String; = "AsyncRefreshSubscriber"

.field private static final TYPE_REPEAT_ALWAYS:Ljava/lang/String; = "always"

.field private static final TYPE_REPEAT_FAILED:Ljava/lang/String; = "failed"

.field private static final TYPE_REPEAT_NONE:Ljava/lang/String; = "none"


# instance fields
.field requestInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/alibaba/android/ultron/event/UltronBaseSubscriber;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->requestInfos:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$100(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->processLoadRenderNotify(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Lmtopsdk/mtop/domain/MtopResponse;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Z)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->processDataFillAndRefresh(Lmtopsdk/mtop/domain/MtopResponse;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$300(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->setComponentAsyncStatus(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getComponentAsyncStatus(Lcom/taobao/android/ultron/common/model/IDMComponent;)I
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 195
    :cond_0
    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object v1

    const-string v2, "asyncStatus"

    invoke-virtual {v1, v2}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_1
    return v0
.end method

.method private processDataFillAndRefresh(Lmtopsdk/mtop/domain/MtopResponse;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Z)V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    instance-of v0, v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 214
    iget-object v1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    check-cast v1, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v1, p3}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getCustomSubscriberParser(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/CustomSubscriberParser;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, v0

    :goto_0
    if-nez p3, :cond_1

    .line 216
    new-instance p3, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$DefaultCustomSubscriberParser;

    invoke-direct {p3, p0, v0}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$DefaultCustomSubscriberParser;-><init>(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;)V

    .line 219
    :cond_1
    new-instance v0, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;

    iget-object v1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    invoke-direct {v0, v1}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;-><init>(Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;)V

    .line 220
    iget-object v1, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    const-string v2, "triggerComponent"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->addCustomValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "mtopResponse"

    .line 221
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->addCustomValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 222
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p4, "isError"

    invoke-virtual {v0, p4, p1}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->addCustomValue(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "targetComponents"

    .line 223
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->addCustomValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 224
    invoke-interface {p3, v0}, Lcom/alibaba/android/ultron/event/base/CustomSubscriberParser;->onCustomParser(Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;)V

    const-string p1, "needRefreshComponents"

    .line 226
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ultron/event/model/CustomSubscriberParserModel;->getCustomValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    .line 228
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 229
    iget-object p2, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 233
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/taobao/android/ultron/common/model/IDMComponent;

    if-nez p4, :cond_3

    goto :goto_1

    .line 237
    :cond_3
    invoke-interface {p4}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    const/4 p3, 0x1

    .line 239
    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CustomSubscriberParser finish,refresh: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-static {p2, v1}, Lcom/alibaba/android/ultron/vfw/util/StringListUtils;->toString(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, p4

    const-string p2, "AsyncRefreshSubscriber"

    invoke-static {p2, p3}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 240
    iget-object p2, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    invoke-interface {p2, p1}, Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;->refreshComponents(Ljava/util/List;)V

    :cond_5
    return-void
.end method

.method private processLoadRenderNotify(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 202
    iget-object p4, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    check-cast p4, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {p4, p1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getCustomLoadRenderParser(Ljava/lang/String;)Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    if-nez p3, :cond_1

    goto :goto_1

    .line 206
    :cond_1
    invoke-virtual {p3}, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;->getRootView()Landroid/view/View;

    move-result-object p3

    iget-object p4, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    iget-object v0, p0, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mInstance:Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;

    invoke-interface {p1, p2, p3, p4, v0}, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser;->onCustomLoadRender(Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;Landroid/view/View;Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/android/ultron/vfw/instance/IUltronInstance;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private setComponentAsyncStatus(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-interface {p1}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getExtMap()Landroid/support/v4/util/ArrayMap;

    move-result-object p1

    iget p2, p2, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->lastRequestStatus:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "asyncStatus"

    invoke-virtual {p1, v0, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onHandleEvent(Lcom/alibaba/android/ultron/event/base/UltronEvent;)V
    .locals 17

    move-object/from16 v7, p0

    .line 58
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->getIDMEvent()Lcom/taobao/android/ultron/common/model/IDMEvent;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Lcom/taobao/android/ultron/common/model/IDMEvent;->getFields()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v8, "AsyncRefreshSubscriber"

    if-nez v0, :cond_0

    const-string v0, "error: eventFields is null"

    .line 61
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "targetComponents"

    .line 64
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v4

    const-string v1, "parseKey"

    .line 66
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "repeatRequest"

    .line 67
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "none"

    if-eqz v2, :cond_1

    move-object v1, v3

    .line 72
    :cond_1
    iget-object v2, v7, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->requestInfos:Ljava/util/Map;

    iget-object v6, v7, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-interface {v6}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;

    const/4 v9, 0x0

    if-nez v2, :cond_2

    .line 75
    new-instance v2, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;

    invoke-direct {v2, v9}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;-><init>(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;)V

    .line 76
    iget-object v6, v7, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->requestInfos:Ljava/util/Map;

    iget-object v10, v7, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-interface {v10}, Lcom/taobao/android/ultron/common/model/IDMComponent;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v6, v10, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move-object v10, v2

    const/4 v2, -0x1

    .line 80
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v11, -0x54506df1

    const/4 v12, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eq v6, v11, :cond_5

    const v11, -0x4c696bc3

    if-eq v6, v11, :cond_4

    const v11, 0x33af38

    if-eq v6, v11, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    const-string v3, "failed"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const-string v3, "always"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x2

    :cond_6
    :goto_0
    if-eqz v2, :cond_b

    if-eq v2, v14, :cond_9

    if-eq v2, v13, :cond_7

    goto :goto_1

    .line 94
    :cond_7
    iget v1, v10, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->lastRequestStatus:I

    if-ne v1, v14, :cond_8

    return-void

    .line 98
    :cond_8
    iget v1, v10, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->lastRequestStatus:I

    if-ne v1, v13, :cond_c

    const/4 v0, 0x4

    .line 99
    iput v0, v10, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->lastRequestStatus:I

    return-void

    .line 88
    :cond_9
    iget v1, v10, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->lastRequestStatus:I

    if-eq v1, v14, :cond_a

    iget v1, v10, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->lastRequestStatus:I

    if-ne v1, v13, :cond_c

    :cond_a
    return-void

    .line 82
    :cond_b
    iget v1, v10, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->requestCount:I

    if-lt v1, v14, :cond_c

    return-void

    :cond_c
    :goto_1
    const-string v1, "mtopConfig"

    .line 105
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    if-nez v1, :cond_d

    const-string v0, "error: mtopConfig is null"

    .line 107
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_d
    const-string v2, "apiMethod"

    .line 110
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "apiVersion"

    .line 111
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    .line 113
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    const-string v6, "isNeedWua"

    .line 114
    invoke-virtual {v1, v6}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const-string v13, "usePost"

    .line 115
    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 117
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_12

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e

    goto/16 :goto_3

    .line 122
    :cond_e
    new-instance v13, Lmtopsdk/mtop/domain/MtopRequest;

    invoke-direct {v13}, Lmtopsdk/mtop/domain/MtopRequest;-><init>()V

    .line 123
    invoke-virtual {v13, v11}, Lmtopsdk/mtop/domain/MtopRequest;->setApiName(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v13, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setVersion(Ljava/lang/String;)V

    if-eqz v3, :cond_f

    .line 126
    invoke-virtual {v3}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Lmtopsdk/mtop/domain/MtopRequest;->setData(Ljava/lang/String;)V

    .line 130
    :cond_f
    invoke-static {v13}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->build(Lmtopsdk/mtop/domain/MtopRequest;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    move-result-object v13

    if-eqz v1, :cond_10

    .line 131
    sget-object v1, Lmtopsdk/mtop/domain/MethodEnum;->POST:Lmtopsdk/mtop/domain/MethodEnum;

    goto :goto_2

    :cond_10
    sget-object v1, Lmtopsdk/mtop/domain/MethodEnum;->GET:Lmtopsdk/mtop/domain/MethodEnum;

    :goto_2
    invoke-virtual {v13, v1}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->reqMethod(Lmtopsdk/mtop/domain/MethodEnum;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    if-eqz v6, :cond_11

    .line 133
    invoke-virtual {v13}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->useWua()Lcom/taobao/tao/remotebusiness/MtopBusiness;

    :cond_11
    const-string v1, "loadRenderKey"

    .line 135
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v0, "triggerViewHolder"

    .line 136
    invoke-virtual {v7, v0}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->getExtraData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;

    .line 139
    new-instance v3, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v15

    move-object v9, v3

    move-object v3, v6

    move-object/from16 v16, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$1;-><init>(Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;Ljava/lang/String;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Lcom/alibaba/fastjson/JSONArray;Ljava/lang/String;Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;)V

    invoke-virtual {v13, v9}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lcom/taobao/tao/remotebusiness/MtopBusiness;

    .line 172
    new-array v0, v14, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start execute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v8, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    .line 173
    invoke-virtual {v13}, Lcom/taobao/tao/remotebusiness/MtopBusiness;->startRequest()V

    .line 174
    iget v0, v10, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->requestCount:I

    add-int/2addr v0, v14

    iput v0, v10, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->requestCount:I

    .line 175
    iput v14, v10, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;->lastRequestStatus:I

    .line 176
    iget-object v0, v7, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->mComponent:Lcom/taobao/android/ultron/common/model/IDMComponent;

    invoke-direct {v7, v0, v10}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->setComponentAsyncStatus(Lcom/taobao/android/ultron/common/model/IDMComponent;Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber$RequestInfo;)V

    .line 178
    sget-object v0, Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;->STATE_LOADING:Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-direct {v7, v15, v0, v1, v2}, Lcom/alibaba/android/ultron/event/AsyncRefreshSubscriber;->processLoadRenderNotify(Ljava/lang/String;Lcom/alibaba/android/ultron/event/base/CustomLoadRenderParser$LoadState;Lcom/alibaba/android/ultron/vfw/viewholder/RecyclerViewHolder;Ljava/lang/Object;)V

    return-void

    :cond_12
    :goto_3
    const-string v0, "error: apiMethod or apiVersion is null"

    .line 118
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
