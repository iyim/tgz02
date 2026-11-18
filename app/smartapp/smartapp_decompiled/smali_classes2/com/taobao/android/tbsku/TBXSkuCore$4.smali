.class Lcom/taobao/android/tbsku/TBXSkuCore$4;
.super Lcom/alibaba/fastjson/JSONObject;
.source "TBXSkuCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/TBXSkuCore;->updateRelatedAuctions(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

.field final synthetic val$relatedAuctions:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/TBXSkuCore;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$4;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    iput-object p2, p0, Lcom/taobao/android/tbsku/TBXSkuCore$4;->val$relatedAuctions:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 232
    new-instance p1, Lcom/taobao/android/tbsku/TBXSkuCore$4$1;

    invoke-direct {p1, p0}, Lcom/taobao/android/tbsku/TBXSkuCore$4$1;-><init>(Lcom/taobao/android/tbsku/TBXSkuCore$4;)V

    const-string p2, "id_biz_relatedAuctions"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/tbsku/TBXSkuCore$4;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
