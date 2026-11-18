.class Lcom/taobao/phenix/intf/PhenixCreator$1;
.super Ljava/lang/Object;
.source "PhenixCreator.java"

# interfaces
.implements Lcom/taobao/phenix/intf/event/IPhenixListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/phenix/intf/PhenixCreator;->fetchInto(Landroid/widget/ImageView;)Lcom/taobao/phenix/intf/PhenixTicket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field final synthetic this$0:Lcom/taobao/phenix/intf/PhenixCreator;


# direct methods
.method constructor <init>(Lcom/taobao/phenix/intf/PhenixCreator;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator$1;->this$0:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z
    .locals 0

    .line 399
    check-cast p1, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator$1;->onHappen(Lcom/taobao/phenix/intf/event/SuccPhenixEvent;)Z

    move-result p1

    return p1
.end method

.method public onHappen(Lcom/taobao/phenix/intf/event/SuccPhenixEvent;)Z
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator$1;->this$0:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-static {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->access$000(Lcom/taobao/phenix/intf/PhenixCreator;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator$1;->this$0:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-static {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->access$000(Lcom/taobao/phenix/intf/PhenixCreator;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {p1}, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
