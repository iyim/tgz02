.class Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$2;
.super Ljava/lang/Object;
.source "DataParserEngineImpl.java"

# interfaces
.implements Lcom/alibaba/android/ultron/engine/logic/LogicCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;->doParse(Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/ultron/engine/logic/LogicCallBack<",
        "Lcom/alibaba/fastjson/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;

.field final synthetic val$callback:Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;

.field final synthetic val$context:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$2;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$2;->val$context:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    iput-object p3, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$2;->val$callback:Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveValue(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "call method return null"

    .line 66
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    const-string v0, "DataParserEngineImpl"

    invoke-static {v0, p1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "storedState"

    .line 73
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "bizState"

    .line 74
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    .line 76
    iget-object v1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$2;->val$context:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;

    iget-object v1, v1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext;->mData:Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;

    iput-object v0, v1, Lcom/alibaba/android/ultron/vfw/dataloader/DataLoaderContext$Data;->storeState:Lcom/alibaba/fastjson/JSONObject;

    .line 77
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v1, "sku_script"

    .line 78
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance p1, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;

    invoke-direct {p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;-><init>()V

    .line 81
    invoke-virtual {p1, v0}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;->setUserData(Lcom/alibaba/fastjson/JSONObject;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$2;->val$callback:Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;

    invoke-interface {v0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseCallback;->onDataParseFinished(Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;)Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;

    return-void
.end method

.method public bridge synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 62
    check-cast p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$2;->onReceiveValue(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
