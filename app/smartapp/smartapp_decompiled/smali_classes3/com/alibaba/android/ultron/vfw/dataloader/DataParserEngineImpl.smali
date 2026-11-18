.class public Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;
.super Ljava/lang/Object;
.source "DataParserEngineImpl.java"

# interfaces
.implements Lcom/alibaba/android/ultron/vfw/dataloader/IDataLoaderParser;


# static fields
.field private static final JS_BIZ_DATA_KEY:Ljava/lang/String; = "bizState"

.field private static final JS_OPERATION_KEY:Ljava/lang/String; = "opState"

.field private static final JS_PLATFORM_KEY:Ljava/lang/String; = "platform"

.field private static final JS_PLATFORM_VALUE:Ljava/lang/String; = "Android"

.field private static final JS_STORED_KEY:Ljava/lang/String; = "storedState"

.field private static final TAG:Ljava/lang/String; = "DataParserEngineImpl"


# instance fields
.field mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    return-void
.end method


# virtual methods
.method public doParse(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;)V
    .locals 5

    .line 34
    iget-object v0, p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mData:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    iget-object v0, v0, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->storeState:Lcom/alibaba/fastjson/JSONObject;

    .line 35
    iget-object v1, p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mData:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    iget-object v1, v1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->initialState:Lcom/alibaba/fastjson/JSONObject;

    .line 36
    iget-object v2, p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mData:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    iget-object v2, v2, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->extInput:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    :cond_0
    if-eqz v1, :cond_1

    const-string v3, "initialState"

    .line 41
    invoke-virtual {v0, v3, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v2, :cond_2

    const-string v1, "extInput"

    .line 44
    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    :cond_2
    iget-object v1, p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mData:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    iget-object v1, v1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->opState:Lcom/alibaba/fastjson/JSONObject;

    .line 51
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v3, "platform"

    const-string v4, "Android"

    .line 52
    invoke-virtual {v2, v3, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "storedState"

    .line 54
    invoke-virtual {v2, v3, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "opState"

    .line 55
    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "main"

    .line 57
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    .line 60
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;->mUltronInstance:Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;

    invoke-virtual {v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstance;->getUltronEngine()Lcom/alibaba/android/ultron/engine/UltronEngine;

    move-result-object v1

    new-instance v3, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$1;

    invoke-direct {v3, p0, v2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$1;-><init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;Lcom/alibaba/fastjson/JSONObject;)V

    new-instance v2, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$2;-><init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;)V

    invoke-virtual {v1, v0, v3, v2}, Lcom/alibaba/android/ultron/engine/UltronEngine;->callMethod(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;)V

    return-void
.end method
