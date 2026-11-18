.class public Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;
.super Landroid/database/ContentObserver;
.source "SwitchObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SwitchObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSettingRepository:Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 21
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;->mContext:Landroid/content/Context;

    .line 22
    new-instance p1, Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;->mSettingRepository:Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    .line 27
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SwitchObserver"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const/4 v1, 0x0

    const v2, 0x2ce58d65

    if-eq p2, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "gesturerecognize"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    .line 31
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/switchupload/SwitchStatusAPI;->getGestureStatus(Landroid/content/Context;)I

    move-result p1

    .line 32
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gesture change = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/alibaba/ailabs/genie/utils/APPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-nez p1, :cond_3

    .line 34
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;->mSettingRepository:Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1, p2}, Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;->setGestureStatus(Landroid/content/Context;ZLcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    .line 36
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;->mSettingRepository:Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/switchupload/SwitchObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1, p2}, Lcom/alibaba/ailabs/genie/switchupload/SettingRepository;->setGestureStatus(Landroid/content/Context;ZLcom/alibaba/ailabs/tg/mtop/OnResponseListener;)V

    goto :goto_2

    :cond_4
    const-string p1, "not update gesture change"

    .line 38
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/utils/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method
