.class Lcom/taobao/android/tbsku/TBXSkuCore$6;
.super Lcom/alibaba/fastjson/JSONObject;
.source "TBXSkuCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/TBXSkuCore;->setLogicsExeOrderInExtInput(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

.field final synthetic val$order:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/TBXSkuCore;Ljava/util/List;)V
    .locals 0

    .line 340
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$6;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    iput-object p2, p0, Lcom/taobao/android/tbsku/TBXSkuCore$6;->val$order:Ljava/util/List;

    invoke-direct {p0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 341
    iget-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$6;->val$order:Ljava/util/List;

    const-string p2, "execution_order"

    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/tbsku/TBXSkuCore$6;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
