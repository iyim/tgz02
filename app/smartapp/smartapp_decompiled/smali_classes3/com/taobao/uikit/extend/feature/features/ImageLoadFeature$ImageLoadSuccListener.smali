.class Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;
.super Ljava/lang/Object;
.source "ImageLoadFeature.java"

# interfaces
.implements Lcom/taobao/phenix/intf/event/IPhenixListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageLoadSuccListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/intf/event/IPhenixListener<",
        "Lcom/taobao/phenix/intf/event/SuccPhenixEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private isInLayoutPass:Z

.field mCreator:Lcom/taobao/phenix/intf/PhenixCreator;

.field final synthetic this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyEvent(Lcom/taobao/phenix/intf/event/SuccPhenixEvent;Z)Z
    .locals 10

    .line 637
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 640
    iget-object v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object v4, v4, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadingUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object v4, v4, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadingUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 641
    new-array p1, v1, [Ljava/lang/Object;

    aput-object v0, p1, v2

    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object p2, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadingUrl:Ljava/lang/String;

    aput-object p2, p1, v3

    const-string p2, "UIKitImage"

    const-string v0, "callback url not match target url, callback=%s, target=%s"

    invoke-static {p2, v0, p1}, Lcom/taobao/uikit/utils/UIKITLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    .line 645
    :cond_0
    iget-object v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-virtual {v4}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->getHost()Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x3

    if-nez v4, :cond_1

    .line 647
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iput v5, p1, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    return v2

    :cond_1
    if-eqz p2, :cond_2

    .line 651
    iget-boolean v6, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->isInLayoutPass:Z

    if-eqz v6, :cond_2

    .line 652
    new-instance p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener$1;

    invoke-direct {p2, p0, p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener$1;-><init>(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;Lcom/taobao/phenix/intf/event/SuccPhenixEvent;)V

    invoke-virtual {v4, p2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return v3

    .line 661
    :cond_2
    iget-object v6, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iput v5, v6, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    .line 662
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    if-nez v5, :cond_3

    .line 664
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    const/4 p2, 0x0

    invoke-static {p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$000(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)Z

    move-result v0

    invoke-static {p1, v4, p2, v2, v0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$100(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    return v3

    .line 668
    :cond_3
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->isIntermediate()Z

    move-result v6

    .line 669
    iget-object v7, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-boolean v7, v7, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mFadeIn:Z

    .line 670
    iget-object v8, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static {v8, v4, v9}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$500(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v7, 0x0

    :cond_4
    if-nez p2, :cond_6

    if-nez v6, :cond_6

    if-eqz v7, :cond_6

    .line 674
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget p2, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    if-eq p2, v1, :cond_6

    .line 675
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 676
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object p2, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    if-eqz p2, :cond_5

    .line 677
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object p2, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result p2

    if-nez p2, :cond_7

    .line 678
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object p2, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 681
    :cond_5
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const-string v5, "alpha"

    invoke-static {v4, v5, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    .line 682
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object p2, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p2, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 683
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object p2, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    const-wide/16 v8, 0x12c

    invoke-virtual {p2, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 684
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object p2, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    new-instance v2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener$2;

    invoke-direct {v2, p0, v4}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener$2;-><init>(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;Landroid/widget/ImageView;)V

    invoke-virtual {p2, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 692
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object p2, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mAlphaAnim:Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    .line 695
    :cond_6
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-static {p2}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$000(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)Z

    move-result v8

    invoke-static {p2, v4, v5, v2, v8}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$100(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    :cond_7
    :goto_0
    if-nez v6, :cond_8

    .line 699
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->getTicket()Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcom/taobao/phenix/intf/PhenixTicket;->setDone(Z)V

    .line 700
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iput v1, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    .line 701
    iget-object p2, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUserSuccListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    if-eqz p2, :cond_8

    .line 702
    iget-object p2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object p2, p2, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUserSuccListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    invoke-interface {p2, p1}, Lcom/taobao/phenix/intf/event/IPhenixListener;->onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z

    .line 705
    :cond_8
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 706
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "intermediate"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v1, "animation"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v1, "time"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    invoke-static {}, Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;->instance()Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;

    move-result-object p2

    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->mCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/taobao/phenix/intf/PhenixCreator;->id()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_9
    const-string v1, ""

    :goto_1
    invoke-virtual {p2, v1, v0, p1}, Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;->onFinished(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v3

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method

.method public bridge synthetic onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z
    .locals 0

    .line 627
    check-cast p1, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->onHappen(Lcom/taobao/phenix/intf/event/SuccPhenixEvent;)Z

    move-result p1

    return p1
.end method

.method public onHappen(Lcom/taobao/phenix/intf/event/SuccPhenixEvent;)Z
    .locals 1

    .line 633
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->isImmediate()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->applyEvent(Lcom/taobao/phenix/intf/event/SuccPhenixEvent;Z)Z

    move-result p1

    return p1
.end method

.method public setIsInLayoutPass(Z)V
    .locals 0

    .line 714
    iput-boolean p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadSuccListener;->isInLayoutPass:Z

    return-void
.end method
