.class Lcom/taobao/phenix/intf/PhenixCreator$3;
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
        "Lcom/taobao/phenix/intf/event/FailPhenixEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/phenix/intf/PhenixCreator;


# direct methods
.method constructor <init>(Lcom/taobao/phenix/intf/PhenixCreator;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator$3;->this$0:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHappen(Lcom/taobao/phenix/intf/event/FailPhenixEvent;)Z
    .locals 1

    .line 375
    iget-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator$3;->this$0:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-static {p1}, Lcom/taobao/phenix/intf/PhenixCreator;->access$000(Lcom/taobao/phenix/intf/PhenixCreator;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/taobao/phenix/intf/PhenixCreator$3;->this$0:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-static {p1}, Lcom/taobao/phenix/intf/PhenixCreator;->access$000(Lcom/taobao/phenix/intf/PhenixCreator;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    if-nez p1, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator$3;->this$0:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-static {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->access$300(Lcom/taobao/phenix/intf/PhenixCreator;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator$3;->this$0:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-static {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->access$300(Lcom/taobao/phenix/intf/PhenixCreator;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator$3;->this$0:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-static {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->access$400(Lcom/taobao/phenix/intf/PhenixCreator;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 381
    iget-object v0, p0, Lcom/taobao/phenix/intf/PhenixCreator$3;->this$0:Lcom/taobao/phenix/intf/PhenixCreator;

    invoke-static {v0}, Lcom/taobao/phenix/intf/PhenixCreator;->access$400(Lcom/taobao/phenix/intf/PhenixCreator;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z
    .locals 0

    .line 372
    check-cast p1, Lcom/taobao/phenix/intf/event/FailPhenixEvent;

    invoke-virtual {p0, p1}, Lcom/taobao/phenix/intf/PhenixCreator$3;->onHappen(Lcom/taobao/phenix/intf/event/FailPhenixEvent;)Z

    move-result p1

    return p1
.end method
