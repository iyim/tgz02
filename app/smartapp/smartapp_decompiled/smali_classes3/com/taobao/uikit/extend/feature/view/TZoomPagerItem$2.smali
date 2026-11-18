.class Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem$2;
.super Ljava/lang/Object;
.source "TZoomPagerItem.java"

# interfaces
.implements Lcom/taobao/phenix/intf/event/IPhenixListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem$2;->this$0:Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHappen(Lcom/taobao/phenix/intf/event/FailPhenixEvent;)Z
    .locals 1

    .line 69
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem$2;->this$0:Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;

    invoke-static {p1}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->access$000(Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem$2;->this$0:Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;

    invoke-static {p1}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->access$100(Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;)Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem$2;->this$0:Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;

    invoke-static {p1}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->access$100(Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;)Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/uikit/extend/material/TBCircularProgressDrawable;->stop()V

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem$2;->this$0:Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;

    invoke-static {p1}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;->access$200(Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return v0
.end method

.method public bridge synthetic onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z
    .locals 0

    .line 65
    check-cast p1, Lcom/taobao/phenix/intf/event/FailPhenixEvent;

    invoke-virtual {p0, p1}, Lcom/taobao/uikit/extend/feature/view/TZoomPagerItem$2;->onHappen(Lcom/taobao/phenix/intf/event/FailPhenixEvent;)Z

    move-result p1

    return p1
.end method
