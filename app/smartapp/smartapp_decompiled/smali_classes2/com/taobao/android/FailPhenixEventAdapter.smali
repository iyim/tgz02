.class public Lcom/taobao/android/FailPhenixEventAdapter;
.super Ljava/lang/Object;
.source "FailPhenixEventAdapter.java"

# interfaces
.implements Lcom/taobao/android/AliImageFailEvent;


# instance fields
.field private final mFailPhenixEvent:Lcom/taobao/phenix/intf/event/FailPhenixEvent;


# direct methods
.method public constructor <init>(Lcom/taobao/phenix/intf/event/FailPhenixEvent;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/taobao/android/FailPhenixEventAdapter;->mFailPhenixEvent:Lcom/taobao/phenix/intf/event/FailPhenixEvent;

    return-void
.end method
