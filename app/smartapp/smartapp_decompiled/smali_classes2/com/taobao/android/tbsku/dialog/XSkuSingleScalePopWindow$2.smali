.class Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$2;
.super Lcom/alibaba/fastjson/JSONObject;
.source "XSkuSingleScalePopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->newChangePropEvent(Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;)V
    .locals 1

    .line 154
    iput-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$2;->this$0:Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string p1, "subType"

    const-string v0, "change_prop"

    .line 155
    invoke-virtual {p0, p1, v0}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$2;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const-string v0, "payload"

    invoke-virtual {p0, v0, p1}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$2;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
