.class public abstract Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;
.super Ljava/lang/Object;
.source "Notify.java"


# static fields
.field protected static final PLAYING_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "playing_notification"

.field protected static final PLAYING_NOTIFICATION_ID:I = 0x9

.field protected static final TAG_NOTIFICATION_NAME:Ljava/lang/String; = "ailabs"


# instance fields
.field private TAG:Ljava/lang/String;

.field public mIsClickPreOrNext:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field protected mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

.field protected options:Lcom/bumptech/glide/request/RequestOptions;

.field private retryTime:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Notify"

    .line 34
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x0

    .line 103
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->retryTime:I

    .line 45
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    .line 46
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->init()V

    return-void
.end method

.method private createNotificationChannel()V
    .locals 4
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 66
    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->playing_notification:I

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "playing_notification"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 67
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 69
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 70
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->playing_notification_description:I

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mIsClickPreOrNext:Z

    .line 51
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mNotificationManager:Landroid/app/NotificationManager;

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->createNotificationChannel()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->notify_album_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 56
    new-instance v1, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_album:I

    .line 57
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_album:I

    .line 58
    invoke-virtual {v1, v2}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v0, v0}, Lcom/bumptech/glide/request/RequestOptions;->override(II)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/bumptech/glide/load/DecodeFormat;

    .line 60
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->format(Lcom/bumptech/glide/load/DecodeFormat;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 61
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->options:Lcom/bumptech/glide/request/RequestOptions;

    return-void
.end method


# virtual methods
.method RePushNotify(Landroid/app/Notification;)V
    .locals 4

    .line 90
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->retryTime:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->retryTime:I

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->TAG:Ljava/lang/String;

    const-string v1, "RePushNotify"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "ailabs"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 95
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RePushNotify: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->retryTime:I

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->init()V

    .line 98
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->RePushNotify(Landroid/app/Notification;)V

    :cond_0
    :goto_0
    return-void
.end method

.method buildPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.alibaba.ailabs.genie.musicplayer.cmd"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "Control"

    .line 141
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "Operation"

    const-string v2, "manual"

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "FromNotify"

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 145
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v2, 0x8000000

    const/16 v3, 0x1a

    if-ge v1, v3, :cond_0

    .line 146
    invoke-static {p1, p2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v1, 0x11

    if-eq p2, v1, :cond_1

    .line 149
    invoke-static {p1, p2, v0, v2}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1

    .line 151
    :cond_1
    invoke-static {p1, p2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 154
    invoke-static {p1, p2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public cancelAll()V
    .locals 2

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public cancelPlayingNotify()V
    .locals 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->stopForeground(Z)V

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method getContentIntent()Landroid/app/PendingIntent;
    .locals 4

    .line 133
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    const-class v2, Lcom/alibaba/ailabs/genie/musicplayer/activity/MainActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "reload"

    const/4 v2, 0x1

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    const/high16 v3, 0x8000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method pushNotify(Landroid/app/Notification;)V
    .locals 3

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->retryTime:I

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->TAG:Ljava/lang/String;

    const-string v1, "pushNotify"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v1, "ailabs"

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;->RePushNotify(Landroid/app/Notification;)V

    :goto_0
    return-void
.end method

.method public abstract release()V
.end method

.method public abstract updateForPlaying(ZLcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
.end method
