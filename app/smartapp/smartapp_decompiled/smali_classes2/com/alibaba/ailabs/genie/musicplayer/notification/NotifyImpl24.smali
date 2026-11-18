.class public Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;
.super Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;
.source "NotifyImpl24.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NotifyImpl24"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mDefaultBitmap:Landroid/graphics/Bitmap;

.field private mDefaultBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mImageUrl:Ljava/lang/String;

.field private mIsPlay:Z

.field private mLastSongId:Ljava/lang/String;

.field private mSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

.field private updateRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V
    .locals 2

    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/notification/Notify;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;)V

    .line 145
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->updateRunnable:Ljava/lang/Runnable;

    .line 47
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->buildEmptyNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;Landroid/graphics/Bitmap;Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->updateDataRunable(Landroid/graphics/Bitmap;Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->updateWithBitmap()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private buildEmptyNotification()Landroid/app/Notification;
    .locals 4

    .line 51
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->app_widget_small_music:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 52
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    const-string v3, "playing_notification"

    invoke-direct {v1, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 53
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_album:I

    .line 54
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const-string v2, "empty"

    .line 56
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v3, 0x0

    .line 57
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    .line 59
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private updateDataRunable(Landroid/graphics/Bitmap;Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;Z)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mBitmap:Landroid/graphics/Bitmap;

    .line 139
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    .line 140
    iput-boolean p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mIsPlay:Z

    .line 141
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->updateRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 142
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->updateRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1f4

    invoke-static {p1, p2, p3}, Lcom/alibaba/ailabs/genie/utils/task/UIHandler;->postDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private updateWithBitmap()V
    .locals 7

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateWithBitmap, title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isPlay:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifyImpl24"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Artist:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "\u672a\u77e5\u6b4c\u624b"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    iget-object v0, v0, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->Artist:Ljava/lang/String;

    .line 155
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, "\u672a\u77e5\u6b4c\u540d"

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 156
    :goto_1
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->app_widget_small_music:I

    invoke-direct {v3, v4, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " - "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    const-string v5, "playing_notification"

    invoke-direct {v2, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v4, 0x1

    .line 159
    invoke-virtual {v2, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_album:I

    .line 161
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 162
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mSong:Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;

    .line 163
    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    const/4 v5, 0x0

    .line 164
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 165
    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 166
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 167
    invoke-virtual {v2}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    .line 169
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->getGlobalSongList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 170
    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->appwidget_prev:I

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {p0, v6, v4}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->buildPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 171
    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->appwidget_next:I

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    const/4 v6, 0x3

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->buildPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 172
    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->appwidget_toggle:I

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->buildPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 174
    :cond_2
    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->tvExit:I

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    const/16 v6, 0x12

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->buildPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 175
    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->appwidget_image:I

    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 176
    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->tvSongName:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6b63\u5728\u64ad\u653e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pushNotify,isPlay: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->appwidget_toggle:I

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_music_pause_notify:I

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 181
    :cond_3
    sget v0, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->appwidget_toggle:I

    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_play_notify_music:I

    invoke-virtual {v3, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 183
    :goto_2
    invoke-virtual {p0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->pushNotify(Landroid/app/Notification;)V

    return-void
.end method

.method private useDefaultIcon(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;Z)V
    .locals 3

    .line 112
    :try_start_0
    invoke-static {}, Lcom/alibaba/ailabs/genie/musicplayer/utils/AppContextHelper;->appContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 113
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mDefaultBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 114
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_album:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mDefaultBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mDefaultBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mDefaultBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/ailabs/genie/musicplayer/utils/Utils;->toRoundBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->updateDataRunable(Landroid/graphics/Bitmap;Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 132
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotifyImpl24"

    invoke-static {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateForPlaying(ZLcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V
    .locals 4

    const-string v0, "NotifyImpl24"

    if-nez p2, :cond_0

    const-string p1, "song is null, return"

    .line 67
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 70
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",isPlay:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->sendLogToWebGate(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",thread:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mLastSongId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mIsPlay:Z

    if-ne p1, v1, :cond_1

    const-string p1, "the same playStatus"

    .line 73
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mLastSongId:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mIsPlay:Z

    if-eq p1, v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2

    .line 77
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mIsPlay:Z

    .line 78
    invoke-direct {p0, v1, p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->updateDataRunable(Landroid/graphics/Bitmap;Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;Z)V

    const-string p1, "the same bitmap"

    .line 79
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 83
    :cond_2
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mLastSongId:Ljava/lang/String;

    .line 84
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mIsPlay:Z

    .line 85
    invoke-direct {p0, p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->useDefaultIcon(Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;Z)V

    .line 86
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;->getAlbum()Ljava/lang/String;

    move-result-object p1

    .line 87
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 90
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mImageUrl:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->options:Lcom/bumptech/glide/request/RequestOptions;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24$1;

    invoke-direct {v0, p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;)V

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0

    .line 105
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->mService:Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/musicplayer/service/MusicService;->isPlay()Z

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/notification/NotifyImpl24;->updateDataRunable(Landroid/graphics/Bitmap;Lcom/alibaba/ailabs/genie/musicplayer/entity/Song;Z)V

    :cond_5
    :goto_0
    return-void
.end method
