.class public Lcom/alibaba/genie/tradepay/manager/ActivityCollector;
.super Ljava/lang/Object;
.source "ActivityCollector.java"


# static fields
.field public static mActivityStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static addActivity(Landroid/app/Activity;)V
    .locals 2

    .line 30
    sget-object v0, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->mActivityStack:Ljava/util/Stack;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    sput-object v0, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->mActivityStack:Ljava/util/Stack;

    .line 33
    :cond_0
    sget-object v0, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->mActivityStack:Ljava/util/Stack;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static checkWeakReference()V
    .locals 2

    .line 51
    sget-object v0, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->mActivityStack:Ljava/util/Stack;

    if-eqz v0, :cond_1

    .line 52
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 54
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static getActivity(Ljava/lang/Class;)Landroid/app/Activity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/app/Activity;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->mActivityStack:Ljava/util/Stack;

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    .line 69
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 71
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, p0, :cond_0

    return-object v1

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public static removeAllActivity()V
    .locals 2

    .line 36
    sget-object v0, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->mActivityStack:Ljava/util/Stack;

    if-eqz v0, :cond_2

    .line 37
    invoke-virtual {v0}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 39
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 44
    :cond_1
    sget-object v0, Lcom/alibaba/genie/tradepay/manager/ActivityCollector;->mActivityStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    :cond_2
    return-void
.end method
