.class Lcom/alibaba/android/ultron/vfw/core/ViewEngine$5;
.super Ljava/lang/Object;
.source "ViewEngine.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->rebuild(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    .locals 0

    .line 556
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$5;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .line 561
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$5;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$900(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$5;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$900(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/core/ViewEngine$5;->this$0:Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->access$1000(Lcom/alibaba/android/ultron/vfw/core/ViewEngine;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 566
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\u7ec4\u4ef6\u662f\u5426\u663e\u793a\u521d\u59cb\u5316"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "ViewEngine"

    invoke-static {v0, v1}, Lcom/taobao/android/ultron/common/utils/UnifyLog;->e(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void
.end method
