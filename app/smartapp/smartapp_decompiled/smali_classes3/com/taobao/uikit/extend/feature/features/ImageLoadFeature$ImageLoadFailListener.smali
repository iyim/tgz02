.class Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;
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
    name = "ImageLoadFailListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/intf/event/IPhenixListener<",
        "Lcom/taobao/phenix/intf/event/FailPhenixEvent;",
        ">;"
    }
.end annotation


# instance fields
.field mCreator:Lcom/taobao/phenix/intf/PhenixCreator;

.field final synthetic this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHappen(Lcom/taobao/phenix/intf/event/FailPhenixEvent;)Z
    .locals 5

    const/4 v0, 0x2

    .line 600
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget v1, v1, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-static {v1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$300(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "UIKitImage"

    const-string v4, "load image failed, state=%d, url=%s"

    invoke-static {v1, v4, v0}, Lcom/taobao/uikit/utils/UIKITLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/event/FailPhenixEvent;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x194

    if-eq v0, v1, :cond_0

    .line 608
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-static {v0, v2}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$402(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;Z)Z

    goto :goto_0

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-static {v0, v3}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$402(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;Z)Z

    .line 610
    :goto_0
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/event/FailPhenixEvent;->getTicket()Lcom/taobao/phenix/intf/PhenixTicket;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/taobao/phenix/intf/PhenixTicket;->setDone(Z)V

    .line 611
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-virtual {v0}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->getHost()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-static {v4}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$000(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)Z

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$100(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;Landroid/widget/ImageView;Landroid/graphics/drawable/BitmapDrawable;ZZ)V

    .line 612
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    const/4 v1, 0x3

    iput v1, v0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mLoadState:I

    .line 615
    iget-object v0, v0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUserFailListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    if-eqz v0, :cond_1

    .line 616
    iget-object v0, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    iget-object v0, v0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->mUserFailListener:Lcom/taobao/phenix/intf/event/IPhenixListener;

    invoke-interface {v0, p1}, Lcom/taobao/phenix/intf/event/IPhenixListener;->onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z

    .line 618
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_2

    .line 619
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/event/FailPhenixEvent;->getResultCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "null"

    :goto_1
    const-string v2, "resultCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "time"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    iget-object v1, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->this$0:Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;

    invoke-static {v1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;->access$300(Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oriUrl"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    invoke-static {}, Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;->instance()Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->mCreator:Lcom/taobao/phenix/intf/PhenixCreator;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/taobao/phenix/intf/PhenixCreator;->id()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    const-string v2, ""

    :goto_2
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/event/FailPhenixEvent;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, v0}, Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v3
.end method

.method public bridge synthetic onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z
    .locals 0

    .line 595
    check-cast p1, Lcom/taobao/phenix/intf/event/FailPhenixEvent;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/features/ImageLoadFeature$ImageLoadFailListener;->onHappen(Lcom/taobao/phenix/intf/event/FailPhenixEvent;)Z

    move-result p1

    return p1
.end method
