.class Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$1;
.super Ljava/lang/Object;
.source "TBXSkuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->onSuccess(ILmtopsdk/mtop/domain/MtopResponse;Lmtopsdk/mtop/domain/BaseOutDo;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;

.field final synthetic val$act:Lcom/taobao/android/tbsku/TBXSkuActivity;

.field final synthetic val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;Lcom/taobao/android/tbsku/TBXSkuActivity;Lmtopsdk/mtop/domain/MtopResponse;)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$1;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;

    iput-object p2, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$1;->val$act:Lcom/taobao/android/tbsku/TBXSkuActivity;

    iput-object p3, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$1;->val$act:Lcom/taobao/android/tbsku/TBXSkuActivity;

    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$700(Lcom/taobao/android/tbsku/TBXSkuActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$1;->this$0:Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;

    iget-object v1, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$1;->val$act:Lcom/taobao/android/tbsku/TBXSkuActivity;

    iget-object v2, p0, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener$1;->val$mtopResponse:Lmtopsdk/mtop/domain/MtopResponse;

    invoke-static {v1, v2}, Lcom/taobao/android/tbsku/TBXSkuActivity;->access$1000(Lcom/taobao/android/tbsku/TBXSkuActivity;Lmtopsdk/mtop/domain/MtopResponse;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;->access$1100(Lcom/taobao/android/tbsku/TBXSkuActivity$TBXSkuResponseListener;Lcom/alibaba/fastjson/JSONObject;)V

    :cond_0
    return-void
.end method
