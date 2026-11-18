.class public Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;
.super Ljava/lang/Object;
.source "ObserverHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSwitchContentObserver:Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;->mContext:Landroid/content/Context;

    .line 20
    new-instance p1, Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;->mSwitchContentObserver:Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;

    return-void
.end method


# virtual methods
.method public register()V
    .locals 5

    .line 24
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.alibaba.ailabs.genie.datacenter.DataCenterProvider/gesturerecognize"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;->mSwitchContentObserver:Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 28
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;->mSwitchContentObserver:Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public unRegister()V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/datacenter/observer/ObserverHelper;->mSwitchContentObserver:Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
