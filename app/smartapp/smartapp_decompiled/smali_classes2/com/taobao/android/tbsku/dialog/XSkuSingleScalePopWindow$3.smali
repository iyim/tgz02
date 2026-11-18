.class Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$3;
.super Ljava/util/ArrayList;
.source "XSkuSingleScalePopWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;->newChangePropEvent(Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;Lcom/alibaba/fastjson/JSONObject;)Lcom/alibaba/android/ultron/event/base/UltronEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;

.field final synthetic val$data:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$3;->this$0:Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow;

    iput-object p2, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$3;->val$data:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string p1, "propChangeFromBigImageView"

    .line 159
    invoke-virtual {p0, p1}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$3;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object p1, p0, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$3;->val$data:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p0, p1}, Lcom/taobao/android/tbsku/dialog/XSkuSingleScalePopWindow$3;->add(Ljava/lang/Object;)Z

    return-void
.end method
