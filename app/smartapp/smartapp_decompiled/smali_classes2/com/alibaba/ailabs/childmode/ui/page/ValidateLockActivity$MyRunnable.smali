.class Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyRunnable;
.super Ljava/lang/Object;
.source "ValidateLockActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyRunnable"
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

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyRunnable;->reference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyRunnable;->reference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyRunnable;->validateLockActivity:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    .line 554
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyRunnable;->validateLockActivity:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    if-nez v0, :cond_0

    return-void

    .line 557
    :cond_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/data/utils/GenieDataUtils;->getChildModeSettingBean(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;

    move-result-object v0

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ValidateLockActivity \u8bbe\u5907\u955c\u50cf\u6709\u66f4\u65b0\uff01\uff01\uff01\uff01 childModeSettingBean.getPassword() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ValidateLockActivityTag"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyRunnable;->validateLockActivity:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    invoke-static {v1}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->access$100(Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/data/bean/ChildModeSettingBean;->getPassword()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity$MyRunnable;->validateLockActivity:Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/page/ValidateLockActivity;->finish()V

    :cond_1
    return-void
.end method
