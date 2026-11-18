.class Lcom/taobao/aranger/utils/CallbackManager$CallbackWrapper;
.super Ljava/lang/Object;
.source "CallbackManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/aranger/utils/CallbackManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackWrapper"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Object;


# direct methods
.method constructor <init>(ZLjava/lang/Object;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 130
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/taobao/aranger/utils/CallbackManager$CallbackWrapper;->mCallback:Ljava/lang/Object;

    goto :goto_0

    .line 132
    :cond_0
    iput-object p2, p0, Lcom/taobao/aranger/utils/CallbackManager$CallbackWrapper;->mCallback:Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method get()Ljava/lang/Object;
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/taobao/aranger/utils/CallbackManager$CallbackWrapper;->mCallback:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 140
    nop

    nop

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method
