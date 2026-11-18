.class public Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver$IBindListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MainBroadcastReceiver"


# instance fields
.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver$IBindListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver$IBindListener;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 19
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    if-eqz p1, :cond_6

    if-nez p2, :cond_0

    goto :goto_1

    .line 27
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x24d0769b

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x5689df74

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "com.alibaba.ailabs.genie.assistant.UNBINDUSER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const-string v0, "com.alibaba.ailabs.genie.assistant.BINDUSER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p2, 0x0

    :cond_3
    :goto_0
    const-string p1, "MainBroadcastReceiver"

    if-eqz p2, :cond_5

    if-eq p2, v3, :cond_4

    goto :goto_1

    :cond_4
    const-string p2, "unbind"

    .line 35
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 37
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver$IBindListener;

    invoke-interface {p1, v2}, Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver$IBindListener;->onBindStateChanged(Z)V

    goto :goto_1

    :cond_5
    const-string p2, "bind"

    .line 29
    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/utils/log/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 31
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver;->mListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver$IBindListener;

    invoke-interface {p1, v3}, Lcom/alibaba/ailabs/genie/contacts/app/MainBroadcastReceiver$IBindListener;->onBindStateChanged(Z)V

    :cond_6
    :goto_1
    return-void
.end method
