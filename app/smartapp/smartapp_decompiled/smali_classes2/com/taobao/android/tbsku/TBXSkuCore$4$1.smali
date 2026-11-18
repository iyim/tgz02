.class Lcom/taobao/android/tbsku/TBXSkuCore$4$1;
.super Lcom/alibaba/fastjson/JSONObject;
.source "TBXSkuCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/tbsku/TBXSkuCore$4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/taobao/android/tbsku/TBXSkuCore$4;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/TBXSkuCore$4;)V
    .locals 1

    .line 232
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$4$1;->this$1:Lcom/taobao/android/tbsku/TBXSkuCore$4;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 233
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$4$1;->this$1:Lcom/taobao/android/tbsku/TBXSkuCore$4;

    iget-object p1, p1, Lcom/taobao/android/tbsku/TBXSkuCore$4;->val$relatedAuctions:Lcom/alibaba/fastjson/JSONObject;

    const-string v0, "relatedAuction"

    invoke-virtual {p0, v0, p1}, Lcom/taobao/android/tbsku/TBXSkuCore$4$1;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
