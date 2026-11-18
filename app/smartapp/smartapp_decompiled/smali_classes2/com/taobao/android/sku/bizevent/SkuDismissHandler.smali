.class public Lcom/taobao/android/sku/bizevent/SkuDismissHandler;
.super Ljava/lang/Object;
.source "SkuDismissHandler.java"

# interfaces
.implements Lcom/taobao/android/sku/handler/IAliXSkuHandler;


# static fields
.field public static final EVENT_TYPE:Ljava/lang/String; = "sku_dismiss"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public handleEvent(Lcom/taobao/android/sku/handler/SkuEvent;Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;)V
    .locals 0

    .line 16
    invoke-virtual {p2}, Lcom/taobao/android/sku/handler/AliXSkuHandlerFeedback;->dismissPresenter()V

    return-void
.end method
