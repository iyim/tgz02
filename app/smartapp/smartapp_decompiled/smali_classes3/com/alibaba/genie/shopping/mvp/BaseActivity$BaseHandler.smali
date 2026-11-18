.class public Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;
.super Landroid/os/Handler;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseHandler"
.end annotation


# instance fields
.field private weakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/genie/shopping/mvp/BaseActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/genie/shopping/mvp/BaseActivity;",
            ">;)V"
        }
    .end annotation

    .line 215
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 216
    iput-object p1, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->weakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public get()Lcom/alibaba/genie/shopping/mvp/BaseActivity;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->weakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/genie/shopping/mvp/BaseActivity;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity$BaseHandler;->get()Lcom/alibaba/genie/shopping/mvp/BaseActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->handleBaseMessage(Landroid/os/Message;)V

    nop

    :cond_1
    :goto_0
    return-void
.end method
