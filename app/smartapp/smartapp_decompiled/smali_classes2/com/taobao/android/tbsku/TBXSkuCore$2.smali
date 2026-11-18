.class Lcom/taobao/android/tbsku/TBXSkuCore$2;
.super Ljava/lang/Object;
.source "TBXSkuCore.java"

# interfaces
.implements Lcom/taobao/android/sku/AliXSkuCore$IErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/tbsku/TBXSkuCore;->initDowngradeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/android/tbsku/TBXSkuCore;


# direct methods
.method constructor <init>(Lcom/taobao/android/tbsku/TBXSkuCore;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/taobao/android/tbsku/TBXSkuCore$2;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore$2;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$102(Lcom/taobao/android/tbsku/TBXSkuCore;Z)Z

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore$2;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$200(Lcom/taobao/android/tbsku/TBXSkuCore;)Lcom/taobao/android/tbsku/downgrade/IDowngrade;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore$2;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$200(Lcom/taobao/android/tbsku/TBXSkuCore;)Lcom/taobao/android/tbsku/downgrade/IDowngrade;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/taobao/android/tbsku/downgrade/IDowngrade;->downgrade(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore$2;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$000(Lcom/taobao/android/tbsku/TBXSkuCore;)Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore$2;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$000(Lcom/taobao/android/tbsku/TBXSkuCore;)Lcom/taobao/android/sku/AliXSkuCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/sku/AliXSkuCore;->dismissPresenter()V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore$2;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$300(Lcom/taobao/android/tbsku/TBXSkuCore;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/android/ultron/utils/DebugUtils;->isDebuggable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/taobao/android/tbsku/TBXSkuCore$2;->this$0:Lcom/taobao/android/tbsku/TBXSkuCore;

    invoke-static {v0}, Lcom/taobao/android/tbsku/TBXSkuCore;->access$300(Lcom/taobao/android/tbsku/TBXSkuCore;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_2
    return-void
.end method
