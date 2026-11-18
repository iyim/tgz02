.class Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;
.super Ljava/lang/Object;
.source "ValidateLockActivity.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/data/GenieDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyGenieDataListener"
.end annotation


# instance fields
.field private reference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;",
            ">;"
        }
    .end annotation
.end field

.field private validateLockActivity:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)V
    .locals 1

    .line 570
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 571
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;->reference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onUpdate()V
    .locals 2

    const-string v0, "ValidateLockActivityTag"

    const-string v1, "GenieDataUtils IDeviceMirrorChanger onUpdate"

    .line 576
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;->validateLockActivity:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    .line 578
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyGenieDataListener;->validateLockActivity:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    if-nez v0, :cond_0

    return-void

    .line 581
    :cond_0
    new-instance v1, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyRunnable;

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyRunnable;-><init>(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)V

    invoke-static {v1}, Lcom/alibaba/ailabs/genie/utils/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
