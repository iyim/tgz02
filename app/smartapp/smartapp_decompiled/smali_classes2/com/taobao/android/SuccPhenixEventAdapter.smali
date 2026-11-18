.class public Lcom/taobao/android/SuccPhenixEventAdapter;
.super Ljava/lang/Object;
.source "SuccPhenixEventAdapter.java"

# interfaces
.implements Lcom/taobao/android/AliImageSuccEvent;


# instance fields
.field private final mSuccPhenixEvent:Lcom/taobao/phenix/intf/event/SuccPhenixEvent;


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/intf/event/SuccPhenixEvent;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/taobao/android/SuccPhenixEventAdapter;->mSuccPhenixEvent:Lcom/taobao/phenix/intf/event/SuccPhenixEvent;

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/taobao/android/SuccPhenixEventAdapter;->mSuccPhenixEvent:Lcom/taobao/phenix/intf/event/SuccPhenixEvent;

    invoke-virtual {v0}, Lcom/taobao/phenix/intf/event/SuccPhenixEvent;->getDrawable()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    return-object v0
.end method
