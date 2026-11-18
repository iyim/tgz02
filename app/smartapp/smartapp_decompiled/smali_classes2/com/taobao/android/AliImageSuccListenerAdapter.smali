.class Lcom/taobao/android/AliImageSuccListenerAdapter;
.super Ljava/lang/Object;
.source "AliImageSuccListenerAdapter.java"

# interfaces
.implements Lcom/taobao/phenix/intf/event/IPhenixListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/taobao/phenix/intf/event/IPhenixListener<",
        "Lcom/taobao/phenix/intf/event/SuccPhenixEvent;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAliImageListener:Lcom/taobao/android/AliImageListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/taobao/android/AliImageListener<",
            "Lcom/taobao/android/AliImageSuccEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/android/AliImageListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/android/AliImageListener<",
            "Lcom/taobao/android/AliImageSuccEvent;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 14
    iput-object p1, p0, Lcom/taobao/android/AliImageSuccListenerAdapter;->mAliImageListener:Lcom/taobao/android/AliImageListener;

    return-void

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "aliImageListener must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public bridge synthetic onHappen(Lcom/taobao/phenix/intf/event/PhenixEvent;)Z
    .locals 0

    .line 6
    check-cast p1, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;

    invoke-virtual {p0, p1}, Lcom/taobao/android/AliImageSuccListenerAdapter;->onHappen(Lcom/taobao/phenix/intf/event/SuccPhenixEvent;)Z

    move-result p1

    return p1
.end method

.method public onHappen(Lcom/taobao/phenix/intf/event/SuccPhenixEvent;)Z
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/taobao/android/AliImageSuccListenerAdapter;->mAliImageListener:Lcom/taobao/android/AliImageListener;

    new-instance v1, Lcom/taobao/android/SuccPhenixEventAdapter;

    invoke-direct {v1, p1}, Lcom/taobao/android/SuccPhenixEventAdapter;-><init>(Lcom/taobao/phenix/intf/event/SuccPhenixEvent;)V

    invoke-interface {v0, v1}, Lcom/taobao/android/AliImageListener;->onHappen(Lcom/taobao/android/AliImageEvent;)Z

    move-result p1

    return p1
.end method
