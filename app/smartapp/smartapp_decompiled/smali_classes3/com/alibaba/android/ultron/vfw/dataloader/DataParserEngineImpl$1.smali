.class Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$1;
.super Ljava/util/ArrayList;
.source "DataParserEngineImpl.java"


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
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;

.field final synthetic val$params:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$1;->this$0:Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl;

    iput-object p2, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$1;->val$params:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    iget-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$1;->val$params:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/android/ultron/vfw/dataloader/DataParserEngineImpl$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
