.class public Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;
.super Landroid/os/Handler;
.source "DXAsyncRenderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AsyncScheduledHandler"
.end annotation


# instance fields
.field private managerWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;Landroid/os/Looper;)V
    .locals 0

    .line 373
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 374
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;->managerWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;->managerWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 387
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager$AsyncScheduledHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void

    .line 392
    :cond_1
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 421
    :pswitch_1
    invoke-static {v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->access$300(Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;)V

    goto :goto_0

    .line 416
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/taobao/android/dinamicx/DXRuntimeContext;

    .line 417
    invoke-virtual {v0, p1}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->cancelPrefetchTask(Lcom/taobao/android/dinamicx/DXRuntimeContext;)V

    goto :goto_0

    .line 412
    :pswitch_3
    invoke-static {v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->access$200(Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;)V

    goto :goto_0

    .line 404
    :pswitch_4
    invoke-static {v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->access$000(Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;)V

    goto :goto_0

    .line 408
    :pswitch_5
    invoke-static {v0}, Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;->access$100(Lcom/taobao/android/dinamicx/asyncrender/DXAsyncRenderManager;)V

    goto :goto_0

    .line 399
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 400
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 394
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    .line 395
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 425
    invoke-static {p1}, Lcom/taobao/android/dinamicx/exception/DXExceptionUtil;->printStack(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
