.class public Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;
.super Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;
.source "NotifyImpl.java"


# instance fields
.field private mIsPlay:Z

.field private mRemoteBigView:Landroid/widget/RemoteViews;

.field private mRemoteView:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private buildNotification(Landroid/content/Context;)Landroid/app/Notification;
    .locals 2

    .line 43
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v1, "playing_notification"

    invoke-direct {v0, p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->mRemoteBigView:Landroid/widget/RemoteViews;

    .line 45
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const-string v1, ""

    .line 46
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 47
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, 0x0

    .line 48
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    const/4 v1, 0x2

    .line 49
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    .line 50
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    .line 51
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object p1

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_album:I

    .line 52
    invoke-virtual {p1, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 53
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->mRemoteBigView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 54
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 55
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public release()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateForPlaying(ZLcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 2

    if-eqz p2, :cond_1

    .line 27
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    new-instance p2, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->app_widget_small_music:I

    invoke-direct {p2, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->mRemoteBigView:Landroid/widget/RemoteViews;

    .line 31
    new-instance p2, Landroid/widget/RemoteViews;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->app_widget_small_music:I

    invoke-direct {p2, v0, v1}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->mRemoteView:Landroid/widget/RemoteViews;

    .line 32
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->mIsPlay:Z

    .line 33
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->buildNotification(Landroid/content/Context;)Landroid/app/Notification;

    move-result-object p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl;->pushNotify(Landroid/app/Notification;)V

    :cond_1
    :goto_0
    return-void
.end method
