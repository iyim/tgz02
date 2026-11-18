.class Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$2;
.super Ljava/lang/Object;
.source "TBXSkuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->dealResultInMainThread(Lcom/alibaba/fastjson/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;

.field final synthetic val$result:Lcom/alibaba/fastjson/JSONObject;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 494
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$2;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;

    iput-object p2, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$2;->val$result:Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 497
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$2;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;

    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->access$1600(Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/tbsku/TBXSkuActivity;

    if-eqz v0, :cond_0

    .line 498
    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$700(Lcom/taobao/android/tbsku/TBXSkuActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 499
    iget-object v1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$2;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;

    iget-object v2, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$2;->val$result:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v0, v2}, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->dealMtopSuccess(Lcom/taobao/android/tbsku/TBXSkuActivity;Lcom/alibaba/fastjson/JSONObject;)V

    :cond_0
    return-void
.end method
